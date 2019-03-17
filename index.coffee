fs = require 'fs'
puppeteer = require 'puppeteer'
yaml = require 'js-yaml'


# Get the list of websites to analyze
sites = yaml.safeLoad fs.readFileSync './sites.yaml'

# Get our results
oldResults = JSON.parse fs.readFileSync './results.json'

# Scrape them and analyze <script type="module"> tags
do ->
	browser = await puppeteer.launch
		headless: yes
	page = await browser.newPage()
	await page.setViewport
		width: 1920
		height: 926

	console.log "Scraping #{sites.length} sites that Google tells us use <script type=\"module\">..."
	results = {}
	for site in sites
		console.log "  #{site}"
		results[site] = []
		if oldResults[site]
			results[site] = oldResults[site]
		try
			await page.goto site
			pageScripts = await page.evaluate ->
				document.querySelectorAll('script[type="module"]').map (el) => {html: el.outerHTML, src: el.src}
		catch
			continue # Skip pages we can’t load or parse

		continue if pageScripts.length is 0
		for {html, src} in pageScripts
			console.log "    #{html}"
			results[site] = pageScripts

	fs.writeFileSync './results.json', JSON.stringify(results, null, '\t')

	# Analyze
	scriptSources = 0
	jsFiles = 0
	mjsFiles = 0
	for site, pageScripts of results
		for { url } in pageScripts
			try
				scriptUrl = new URL url
				pathname = scriptUrl.pathname
				scriptSources++
				if pathname.endsWith('.js')
					jsFiles++
				else if pathname.endsWith('.mjs')
					mjsFiles++

	console.log "\nAfter scraping #{sites.length} sites that Google tells us use <script type=\"module\">,"
	console.log "#{scriptSources} URLs were found inside <script type=\"module\"> src attributes. Of those:"
	console.log "#{"#{jsFiles}".padStart 6, ' '} (#{Math.round(jsFiles / scriptSources)}%) had .js file extensions"
	console.log "#{"#{mjsFiles}".padStart 6, ' '} (#{Math.round(jsFiles / scriptSources)}%) had .mjs file extensions"
	process.exit 0
