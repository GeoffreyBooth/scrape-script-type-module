fs = require 'fs'
puppeteer = require 'puppeteer'
yaml = require 'js-yaml'


# Get the list of websites to analyze
sites = yaml.safeLoad fs.readFileSync './sites.yaml'

# Get our results
try
	results = JSON.parse fs.readFileSync './results.json'
catch
	results = {}

# Scrape them and analyze <script type="module"> tags
do ->
	browser = await puppeteer.launch
		headless: yes
		args: ['--start-maximized']
		ignoreDefaultArgs: ['--enable-automation'] # https://github.com/GoogleChrome/puppeteer/issues/2511#issuecomment-387811302
	page = await browser.newPage()
	await page.setViewport
		width: 1920
		height: 926

	console.log "Scraping #{sites.length} sites that Google tells us use <script type=\"module\">..."
	for site in sites
		console.log "\n  - #{site}\n"
		if results[site] and not process.env.RESCRAPE_ALL
			if results[site]?.length isnt 0
				console.log "    - `#{script.html}`" for script in results[site]
				continue
			else unless process.env.RESCRAPE_EMPTY
				console.log '    - (no `<script type="module">` element found)'
				continue
		results[site] = []

		try
			await page.goto site,
				waitUntil: 'domcontentloaded'
				timeout: 60000 # 60 seconds
			await page.waitForFunction -> # https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md#pagewaitforfunctionpagefunction-options-args
					document.querySelectorAll('script[type="module"]').length isnt 0
				, {polling: 2000, timeout: 60000}
			pageScripts = await page.evaluate ->
				nodeList = document.querySelectorAll('script[type="module"]')
				[nodeList...].map (el) => {html: el.outerHTML, src: el.src}
		catch err
			console.error "    Error: #{err.message}"
			continue # Skip pages we can’t load or parse

		for {html, src} in pageScripts
			console.log "    #{html}"
			results[site] = pageScripts

		# Write our results on every iteration of the loop
		fs.writeFileSync './results.json', JSON.stringify(results, null, '\t')


	# Analyze
	scriptSources = 0
	sitesCount = 0
	sitesUsingJs = 0
	sitesUsingMjs = 0
	sitesUsingInline = 0
	sitesUsingDataUri = 0
	sitesUsingNone = 0
	for site, pageScripts of results
		siteUsesJs = no
		siteUsesMjs = no
		siteUsesInline = no
		siteUsesDataUri = no
		for { src } in pageScripts
			if src is '' # Inline script
				siteUsesInline = yes
			else if src.startsWith('data:text/javascript')
				siteUsesDataUri = yes
			else
				try
					scriptUrl = new URL src
					pathname = scriptUrl.pathname
					scriptSources++
					if pathname.endsWith('.js')
						siteUsesJs = yes
					else if pathname.endsWith('.mjs')
						siteUsesMjs = yes
		sitesCount++
		sitesUsingJs++ if siteUsesJs
		sitesUsingMjs++ if siteUsesMjs
		sitesUsingInline++ if siteUsesInline
		sitesUsingDataUri++ if siteUsesDataUri
		sitesUsingNone++ if not siteUsesJs and not siteUsesMjs and not siteUsesInline and not siteUsesDataUri

	sitesWithModuleScripts = sitesCount - sitesUsingNone

	console.log "\nOf the #{sitesWithModuleScripts} sites where <script type=\"module\"> was found:"
	console.log "#{"#{sitesUsingJs}".padStart 6, ' '} (#{Math.round(sitesUsingJs / sitesWithModuleScripts * 100)}%) referenced URLs with .js file extensions"
	console.log "#{"#{sitesUsingMjs}".padStart 6, ' '} (#{Math.round(sitesUsingMjs / sitesWithModuleScripts * 100)}%) referenced URLs with .mjs file extensions"
	console.log "#{"#{sitesUsingInline}".padStart 6, ' '} (#{Math.round(sitesUsingInline / sitesWithModuleScripts * 100)}%) used inline scripts"
	console.log "#{"#{sitesUsingDataUri}".padStart 6, ' '} (#{Math.round(sitesUsingDataUri / sitesWithModuleScripts * 100)}%) used data: URIs"

	console.log '\nRun with the RESCRAPE_ALL or RESCRAPE_EMPTY environment variables to update cached data for sites already scraped,\nor for sites already scraped that had no <script type="module"> elements:\n  RESCRAPE_ALL=true npm start'
	process.exit 0
