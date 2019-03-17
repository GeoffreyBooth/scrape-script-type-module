fs = require 'fs'
puppeteer = require 'puppeteer'
yaml = require 'js-yaml'


# Get the list of websites to analyze
sites = yaml.safeLoad fs.readFileSync('./sites.yaml', 'utf8')

# Scrape them and analyze <script type="module"> tags
do ->
	browser = await puppeteer.launch
		headless: yes
	page = await browser.newPage()
	await page.setViewport
		width: 1920
		height: 926

	console.log "Scraping #{sites.length} sites that Google tells us use <script type=\"module\">..."
	scriptSources = new Set()
	for site in sites
		try
			console.log "  #{site}"
			await page.goto site
			pageScripts = await page.evaluate ->
				scriptTags = []
				document.querySelectorAll('script[type="module"]').forEach (el) =>
					scriptTags.push [el.outerHTML, el.src]
				scriptTags
		catch
			continue # Skip pages we can’t load or parse

		continue if pageScripts.length is 0
		for [pageScriptTag, pageScriptSource] in pageScripts
			console.log "    #{pageScriptTag}"
			scriptSources.add pageScriptSource

	jsFiles = 0
	mjsFiles = 0
	scriptSources.forEach (url) ->
		try
			scriptUrl = new URL url
			pathname = scriptUrl.pathname
			if pathname.endsWith('.js')
				jsFiles++
			else if pathname.endsWith('.mjs')
				mjsFiles++

	console.log "\nAfter scraping #{sites.length} sites that Google tells us use <script type=\"module\">,"
	console.log "#{scriptSources.size} URLs were found inside <script type=\"module\"> src attributes. Of those:"
	console.log "#{"#{jsFiles}".padStart 6, ' '} (#{Math.round(jsFiles / (jsFiles + mjsFiles))}%) had .js file extensions"
	console.log "#{"#{mjsFiles}".padStart 6, ' '} (#{Math.round(jsFiles / (jsFiles + mjsFiles))}%) had .mjs file extensions"
	process.exit 0
