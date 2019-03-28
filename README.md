There is a Google Web Fundamentals article [“Using JavaScript modules on the web”](https://developers.google.com/web/fundamentals/primers/modules) that explains how to use ECMAScript modules in browsers, such as via `<script type="module">`. It includes a section titled [“A note on file extensions”](https://developers.google.com/web/fundamentals/primers/modules#mjs) that encourages developers to use the `.mjs` file extension, with the reasoning being that developers should want to tell apart their ES Module code from their Script code and also to save files for use with Node’s `--experimental-modules` implementation (at least, until it’s replaced with [the new version that allows ES modules in `.js` files](https://github.com/nodejs/modules#current-efforts)).

Most interesting to me, though, was the section [“Web adoption of JS modules”](https://developers.google.com/web/fundamentals/primers/modules#adoption) with a link to [usage counters](https://www.chromestatus.com/metrics/feature/timeline/popularity/2062) listing sites currently using ES modules. That list included 383 sites that Google identified as using ES modules, whether via `<script type="module">` or `import()` or some other method.

So naturally I wondered, how many people are following Google’s advice and using `.mjs` for their ES module files? And so I set about to find out, by writing a script that would load each of the 383 site homepages in Puppeteer and find any `<script type="module">` tags. It produced the following results:

<p><details>

<summary>Expand to see the results of scraping the 383 sites that Google tells us use <code>&lt;script type="module"&gt;</code>:</summary>

  - http://abcdefg123.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://amypuipui.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://area51store.co.nz/

    - `<script type="module" src="//cdn.shopify.com/s/files/1/2500/8302/t/5/assets/app.89aded29.js"></script>`

  - http://bosstwo420.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://candy16899.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://checkin.costasur.com/

    - (no `<script type="module">` element found)

  - http://colunas.revistaepoca.globo.com/

    - `<script src="https://ogjs.infoglobo.com.br/32/scripts/video-player.js.pagespeed.ce.EJzsa_0hxA.js" type="module"></script>`
    - `<script src="https://ogjs.infoglobo.com.br/32/scripts/people-teasers.js.pagespeed.ce.GUP1g1_WOE.js" type="module"></script>`
    - `<script src="https://ogjs.infoglobo.com.br/32/scripts/photo-gallery-teasers.js.pagespeed.ce.xNszp-iJ2D.js" type="module"></script>`

  - http://dav0611.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://elevatedgaming.net/

    - (no `<script type="module">` element found)

  - http://flyfei.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://fruit888.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://henryzeng.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://hotels.wakanow.com/

    - (no `<script type="module">` element found)

  - http://hsuanthony.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://ii520avon.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://interactives.indystar.com/

    - (no `<script type="module">` element found)

  - http://joliz.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://kevinijessi.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://klol.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://leafelin.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://limint.pixnet.net/

    - (no `<script type="module">` element found)

  - http://lissam.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://lucyloveham.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://momentyet.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://on9558.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://oyummy.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://pekyta.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://ronald0527.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://rubieelffie.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://starzeroman.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://tony168324.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://toyangel.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://womantalk99.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - http://www.6play.fr/

    - `<script type="module" src="/vendors-7d1df4e778.bundle.js"></script>`
    - `<script type="module" src="/main-deb6b393c9.bundle.js"></script>`
    - `<script type="module" src="/client-9eb4ac8de1.bundle.js"></script>`

  - http://www.airbnb.ae/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.at/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.be/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.ca/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.cat/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.ch/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.cl/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.co.cr/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.co.id/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.co.in/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.co.kr/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.co.nz/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.co.uk/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.co.ve/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.com.ar/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.com.au/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.com.br/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.com.co/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.com.hk/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.com.mt/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.com.my/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.com.pe/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.com.sg/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.com.tr/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.com.tw/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.com/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.cz/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.de/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.dk/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.es/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.fi/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.fr/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.gr/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.hu/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.ie/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.it/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.jp/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.mx/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.nl/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.no/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.pl/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.pt/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - http://www.airbnb.ru/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnb.se/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.airbnbchina.cn/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - http://www.allthemoms.com/

    - (no `<script type="module">` element found)

  - http://www.azcentral.com/

    - (no `<script type="module">` element found)

  - http://www.baiwang.com.cn/

    - (no `<script type="module">` element found)

  - http://www.beeldengeluid.nl/

    - `<script type="module" async="" src="/themes/bg_theme/assets/js/main-es.js?wRJg6QVeAjWJL0CbRmFnfvlVELCO1v-HJ3q0p1zvxM1G5n8YVqleZGrbGUa_vbQJWm1SpZBFFw"></script>`

  - http://www.caller.com/

    - (no `<script type="module">` element found)

  - http://www.citizen-times.com/

    - (no `<script type="module">` element found)

  - http://www.clarionledger.com/

    - (no `<script type="module">` element found)

  - http://www.coop.no/

    - `<script src="/assets/scripts/esm/coop-no.js?c6a31cec8149721e9f4bd82e5efaaa12" type="module"></script>`

  - http://www.courier-journal.com/

    - (no `<script type="module">` element found)

  - http://www.courierpostonline.com/

    - (no `<script type="module">` element found)

  - http://www.dailyrecord.com/

    - (no `<script type="module">` element found)

  - http://www.debijenkorf.be/

    - (no `<script type="module">` element found)

  - http://www.debijenkorf.nl/

    - (no `<script type="module">` element found)

  - http://www.delmarvanow.com/

    - (no `<script type="module">` element found)

  - http://www.detroitnews.com/

    - (no `<script type="module">` element found)

  - http://www.dnj.com/

    - (no `<script type="module">` element found)

  - http://www.erstegroup.com/

    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/vendors~main.cc9ce38795b4bfc12b66.min.js"></script>`
    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/main.0c953b05ca6f999e91ef.min.js"></script>`

  - http://www.ffdy.cc/

    - (no `<script type="module">` element found)

  - http://www.fleetwaytravel.com/

    - `<script src="https://unpkg.com/ts-search-stencil/dist/search/search.wvrpvjqx.js" type="module" crossorigin="true" data-resources-url="https://unpkg.com/ts-search-stencil/dist/search/" data-namespace="search"></script>`

  - http://www.flip.lease/

    - `<script src="https://cdn.flip.lease/js/modules.ccff86991519b2efbe92.js" crossorigin="true" type="module"></script>`

  - http://www.floridatoday.com/

    - (no `<script type="module">` element found)

  - http://www.freep.com/

    - (no `<script type="module">` element found)

  - http://www.greatfallstribune.com/

    - (no `<script type="module">` element found)

  - http://www.hehesheng.com/

    - (no `<script type="module">` element found)

  - http://www.holonis.com/

    - (no `<script type="module">` element found)

  - http://www.html5test.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_016422(typeof window.test_module_scope === 'undefined')"></script>`

  - http://www.idealo.es/

    - (no `<script type="module">` element found)

  - http://www.ionic.io/

    - `<script src="https://ionicframework.com/js/stencil/ionic-site-components/ionic-site-components.1nlvmivv.js" type="module" crossorigin="true" data-resources-url="https://ionicframework.com/js/stencil/ionic-site-components/" data-namespace="ionic-site-components"></script>`

  - http://www.jslint.com/

    - `<script src="./browser.js" type="module"></script>`

  - http://www.jsonline.com/

    - (no `<script type="module">` element found)

  - http://www.kitsapsun.com/

    - (no `<script type="module">` element found)

  - http://www.knoxnews.com/

    - (no `<script type="module">` element found)

  - http://www.lansingstatejournal.com/

    - (no `<script type="module">` element found)

  - http://www.lcsun-news.com/

    - (no `<script type="module">` element found)

  - http://www.linerider.com/

    - `<script type="module" src="/_v1504.8/main.js" crossorigin=""></script>`

  - http://www.m6.fr/

    - `<script type="module" src="/vendors-7d1df4e778.bundle.js"></script>`
    - `<script type="module" src="/main-deb6b393c9.bundle.js"></script>`
    - `<script type="module" src="/client-9eb4ac8de1.bundle.js"></script>`

  - http://www.m6replay.fr/

    - `<script type="module" src="/vendors-7d1df4e778.bundle.js"></script>`
    - `<script type="module" src="/main-deb6b393c9.bundle.js"></script>`
    - `<script type="module" src="/client-9eb4ac8de1.bundle.js"></script>`

  - http://www.mydriver.com/

    - `<script src="/build/app/app.oblvknyz.js" type="module" crossorigin="true" data-resources-url="/build/app/" data-namespace="app"></script>`
    - `<script src="/build/app/app.oblvknyz.js" type="module" crossorigin="true" data-resources-url="/build/app/" data-namespace="app"></script>`

  - http://www.naturalstacks.com/

    - `<script type="module">
  fetch('https://geoip.nekudo.com/api/')
  .then(res => res.json())
  .then(data => {
    const country = data.country.code
    const d = document
    const template = d.querySelector('#shipping-template')
    const target = d.querySelector('#shipping-target')
    const cash = template.content.querySelector('.cash')

    const OVER100 = [
      'US',
    ]

    const OVER150 = [
      'CA',
      'DK',
      'FI',
      'FR',
      'DE',
      'IS',
      'JP',
      'LU',
      'PT',
      'AE',
      'GB',
    ]

    const isIn100 = OVER100.includes(country)
    const isIn150 = OVER150.includes(country)

    if (isIn100) {
      cash.innerHTML = '100'
      target.innerHTML = template.innerHTML
    }

    if (isIn150) {
      cash.innerHTML = '150'
      target.innerHTML = template.innerHTML
    }
  })
</script>`

  - http://www.news-leader.com/

    - (no `<script type="module">` element found)

  - http://www.northjersey.com/

    - (no `<script type="module">` element found)

  - http://www.ozap.com/

    - (no `<script type="module">` element found)

  - http://www.pal-item.com/

    - (no `<script type="module">` element found)

  - http://www.paris-premiere.fr/

    - `<script type="module" src="/vendors-7d1df4e778.bundle.js"></script>`
    - `<script type="module" src="/main-deb6b393c9.bundle.js"></script>`
    - `<script type="module" src="/client-9eb4ac8de1.bundle.js"></script>`

  - http://www.philipwalton.com/

    - `<script type="module" src="/static/runtime-2bce96b50e.mjs"></script>`
    - `<script type="module" src="/static/npm.autotrack-2af34a4235.mjs"></script>`
    - `<script type="module" src="/static/npm.dom-utils-9b2c74cd1c.mjs"></script>`
    - `<script type="module" src="/static/npm.idlize-9b4800511a.mjs"></script>`
    - `<script type="module" src="/static/npm.workbox-core-3fa12b3991.mjs"></script>`
    - `<script type="module" src="/static/npm.workbox-window-1e3e0b0968.mjs"></script>`
    - `<script type="module" src="/static/main-7158e0ae4b.mjs"></script>`

  - http://www.pressconnects.com/

    - (no `<script type="module">` element found)

  - http://www.reporternews.com/

    - (no `<script type="module">` element found)

  - http://www.rgj.com/

    - (no `<script type="module">` element found)

  - http://www.s-mxs.net/

    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/vendors~main.cc9ce38795b4bfc12b66.min.js"></script>`
    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/main.0c953b05ca6f999e91ef.min.js"></script>`

  - http://www.screets.org/

    - (no `<script type="module">` element found)

  - http://www.shreveporttimes.com/

    - (no `<script type="module">` element found)

  - http://www.slsp.sk/

    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/vendors~main.cc9ce38795b4bfc12b66.min.js"></script>`
    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/main.0c953b05ca6f999e91ef.min.js"></script>`

  - http://www.songsterr.com/

    - (no `<script type="module">` element found)

  - http://www.srw.cn/

    - (no `<script type="module">` element found)

  - http://www.tennessean.com/

    - (no `<script type="module">` element found)

  - http://www.theadvertiser.com/

    - (no `<script type="module">` element found)

  - http://www.thenews-messenger.com/

    - (no `<script type="module">` element found)

  - http://www.thenewsstar.com/

    - (no `<script type="module">` element found)

  - http://www.theoutline.com/

    - `<script type="module">
  amplitude.getInstance().identify(new amplitude.Identify().set("has_es_modules", true));
</script>`

  - http://www.tim.pl/

    - (no `<script type="module">` element found)

  - http://www.vcstar.com/

    - (no `<script type="module">` element found)

  - http://www.videoland.com/

    - (no `<script type="module">` element found)

  - http://www.wetransfer.com/

    - (no `<script type="module">` element found)

  - http://www.winmpg.com/

    - (no `<script type="module">` element found)

  - http://www.ydr.com/

    - (no `<script type="module">` element found)

  - http://www.yinyuezj.com/

    - (no `<script type="module">` element found)

  - http://www.yorkdispatch.com/

    - (no `<script type="module">` element found)

  - http://www.zuowen.com/

    - (no `<script type="module">` element found)

  - https://a508640.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://aaa6642orz.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ahu123.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://alfalfa.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://alley7.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://amp.courierpostonline.com/

    - `<script type="module" src="https://cpt-static.gannettdigital.com/universal-web-client/master/latest/core/scripts/gallium.js" rel="preload"></script>`

  - https://amp.delawareonline.com/

    - `<script type="module" src="https://cpt-static.gannettdigital.com/universal-web-client/master/latest/core/scripts/gallium.js" rel="preload"></script>`

  - https://amp.jconline.com/

    - `<script type="module" src="https://cpt-static.gannettdigital.com/universal-web-client/master/latest/core/scripts/gallium.js" rel="preload"></script>`

  - https://amp.news-press.com/

    - `<script type="module" src="https://cpt-static.gannettdigital.com/universal-web-client/master/latest/core/scripts/gallium.js" rel="preload"></script>`

  - https://amp.statesmanjournal.com/

    - `<script type="module" src="https://cpt-static.gannettdigital.com/universal-web-client/master/latest/core/scripts/gallium.js" rel="preload"></script>`

  - https://amp.stevenspointjournal.com/

    - `<script type="module" src="https://cpt-static.gannettdigital.com/universal-web-client/master/latest/core/scripts/gallium.js" rel="preload"></script>`

  - https://arsablue.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://bassy5292.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://bbclub.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://bcone2007.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://bj.xzl.anjuke.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_0b58e1(typeof window.test_module_scope === 'undefined')"></script>`

  - https://bootscat.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://budai.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://c908022002.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://caioyishan.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://candy20111111.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cartoon0413.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cate824.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://catty1107.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cd.news.anjuke.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_02c1d4(typeof window.test_module_scope === 'undefined')"></script>`

  - https://cerberusrei.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://charlien.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://charmmykittybao.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://checkchecknote.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chenminghsien.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chiablog.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chiaheng423.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chiayi527.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chichi54777.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chihlee8182.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cho86521523.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chris0933570099.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chuanstudio.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://chy5433.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://clairegarden.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cleansingoil99.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cq.zu.anjuke.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_eeb526(typeof window.test_module_scope === 'undefined')"></script>`

  - https://ctfa74.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cwleevivian.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://cynthiach.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://daniel1974.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://darknight0425.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://dawogroup.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://daxdemi.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://dayyu0103.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://dreamyeh.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://drmoremore.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://earl.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://edastyle.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://edc1014073.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://edesk9.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://elaine407.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://elletsuei.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://es.airbnb.com/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://esansan.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://eu.indystar.com/

    - (no `<script type="module">` element found)

  - https://eu.knoxnews.com/

    - (no `<script type="module">` element found)

  - https://faifan.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://fairydolls.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://fanny4lin.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://fennitw.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://fian628.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://firstdream1230.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://floralin0411.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://foshan.anjuke.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_df596a(typeof window.test_module_scope === 'undefined')"></script>`

  - https://fpsdrlee.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://g443237.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://gameurlife.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://glenda0430s.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://gn10202000.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://gratefulgrowers.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://gsctw.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://guodegang.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://han5638.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://happinessclean.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://harrywu714.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://heide0530.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://herballey.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://hogantai.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://honey520chu.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://hong64.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://hotnewsla.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://htt0828.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://hueitzi.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://iambp6.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://icypenguin.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://istory.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://jakonson.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://jamesman0314.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://jamieyhlin.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://janjenglyan.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://jlcforever.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://jubyjuby827.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://k7073835.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://kaelayjc.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://kanemoto.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://kellyku.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://kolassa62349.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://kookaihsu.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://krundou.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ks.anjuke.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_98f0fc(typeof window.test_module_scope === 'undefined')"></script>`

  - https://l5047.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://lalasan13.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://lancechuang.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://lilyri.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://lin6721.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://linneil.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://linwenpin.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://lisa0205.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://liswn.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://litbee.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://liyiting1011.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://lizika183.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://love87142.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://luocm1028.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://m1a2444.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ma26324801.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://master5808.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://mebyliao.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://mhchiu2.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://miasoq.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://midmid22.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://min8455045.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://misssunnyegg.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://mrmark1998.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://mskelly.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://mw520.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://myswallownet.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://natsumi901117.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://nckuhank.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://nightkids.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://nil94.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://number888.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://oglobo.globo.com/

    - `<script src="https://ogjs.infoglobo.com.br/32/scripts/video-player.js.pagespeed.ce.EJzsa_0hxA.js" type="module"></script>`
    - `<script src="https://ogjs.infoglobo.com.br/32/scripts/people-teasers.js.pagespeed.ce.GUP1g1_WOE.js" type="module"></script>`
    - `<script src="https://ogjs.infoglobo.com.br/32/scripts/photo-gallery-teasers.js.pagespeed.ce.xNszp-iJ2D.js" type="module"></script>`

  - https://ohohhan.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://olga890132.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://onhook20151027.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://onitaiaoi2.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://opearl.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://parisbymouth.com/

    - (no `<script type="module">` element found)

  - https://paul.kinlan.me/

    - `<script type="module">
(async () => {
  if (window.opener === null) return;
  const {Comlink} = await import('/javascripts/comlink/comlink.es6.min.js');
  const jsonResponse = await fetch('/index.json');
  const xmlResponse = await fetch('/index.xml');
  const json = await jsonResponse.json();
  const xml = await xmlResponse.text();
  Comlink.expose({json, xml}, window.opener);
})();
</script>`

  - https://pemamuseum.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://pengling.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://pl.airbnb.com/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://poiudsmg.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://portal24.csas.cz/

    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/vendors~main.cc9ce38795b4bfc12b66.min.js"></script>`
    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/main.0c953b05ca6f999e91ef.min.js"></script>`

  - https://positivegirl.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ptp0365.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://qwert9876568.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://redyoung.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://rosenancy688.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ruzimato.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sabella.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sai083.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sali.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sammi0224.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sasarose.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sbuh0111.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://shin1115.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://shine.jcink.net/

    - `<script src="https://unpkg.com/ionicons@4.0.0/dist/ionicons/ionicons.o84enl63.js" type="module" crossorigin="true" data-resources-url="https://unpkg.com/ionicons@4.0.0/dist/ionicons/" data-namespace="ionicons"></script>`

  - https://shinkawac.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sky003407.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sono1215.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://spade7r.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sportstw15.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ssniseya0507.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://stockstudy.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://store.slsp.sk/

    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/vendors~main.cc9ce38795b4bfc12b66.min.js"></script>`
    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/main.0c953b05ca6f999e91ef.min.js"></script>`

  - https://su.fang.anjuke.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_dc7be1(typeof window.test_module_scope === 'undefined')"></script>`

  - https://sungshu.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://sunnystayusa.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://tactac38.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://teamaple.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://teresashih.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://the-elder-scrolls-v-skyrim.en.softonic.com/

    - `<script type="module" crossorigin="anonymous" src="https://sc.sftcdn.net/scripts/57bea-e11b7.mjs" async=""></script>`
    - `<script type="module" crossorigin="anonymous" src="https://sc.sftcdn.net/scripts/1c93b-dfbc9.mjs" async=""></script>`
    - `<script type="module" crossorigin="anonymous" src="https://sc.sftcdn.net/scripts/f50cb-6bae7.mjs" async=""></script>`

  - https://threeplay33.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://tinachang7122.pixnet.net/

    - (no `<script type="module">` element found)

  - https://tkbgo.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://tonewang.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ttypacking.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://tutu109.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://twoplay.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://visualizer.protectwise.com/

    - `<script type="module" src="scripts/modern/runtime-d7ba8e6babaa058937a5.js"></script>`
    - `<script type="module" src="scripts/modern/vendor-3dc4de891bc5a0b1c7ff.js"></script>`
    - `<script type="module" src="scripts/modern/main-524b8e537972c50c4bf1.js"></script>`

  - https://vivianchiu.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://wahamf.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://weio851015.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://wenwen1913.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://will1122.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://win.marthastewart.com/

    - `<script async="" type="module" src="/js/mds.0d1bcb.js" crossorigin=""></script>`

  - https://wolfgang888.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://woman1.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://worldwithout.pixnet.net/

    - `<script src="https://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://wuxi.anjuke.com/

    - `<script type="module" src="data:text/javascript;charset=utf-8,var test_module_scope = true; window.callback_3db1a1(typeof window.test_module_scope === 'undefined')"></script>`

  - https://www.airbnb.ae/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://www.airbnb.cat/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://www.airbnb.ch/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - https://www.airbnb.co.in/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://www.airbnb.co.uk/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - https://www.airbnb.com.ar/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - https://www.airbnb.com.my/

    - `<script defer="" src="https://a0.muscache.com/airbnb/static/packages/shims_post_modules-d108c432.js" type="module"></script>`

  - https://www.airbnb.ie/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://www.airbnb.nl/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://www.airbnb.pl/

    - `<script defer="defer" src="https://a0.muscache.com/airbnb/static/client/packages/shims_post_modules.bundle-26fb8add.js" type="module"></script>`

  - https://www.baxterbulletin.com/

    - (no `<script type="module">` element found)

  - https://www.clarionledger.com/

    - (no `<script type="module">` element found)

  - https://www.courierpress.com/

    - (no `<script type="module">` element found)

  - https://www.desertsun.com/

    - (no `<script type="module">` element found)

  - https://www.erstebank.rs/

    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/vendors~main.cc9ce38795b4bfc12b66.min.js"></script>`
    - `<script type="module" crossorigin="use-credentials" src="/etc/designs/gem/themes/js/build/main.0c953b05ca6f999e91ef.min.js"></script>`

  - https://www.eukanuba.eu/

    - `<script type="module" src="/assets/dist/commons.b207553471affc2bf49d.mjs"></script>`
    - `<script type="module" src="/assets/dist/vendors.app.0bead47d02cac360aec4.mjs"></script>`
    - `<script type="module" src="/assets/dist/app.bd1aa2f4a032b842a47c.mjs"></script>`

  - https://www.finder.com/

    - `<script defer="" type="module" src="https://d1ic4altzx8ueg.cloudfront.net/parent-theme/static/578f/static.es6.js"></script>`
    - `<script defer="" type="module" src="https://d1ic4altzx8ueg.cloudfront.net/parent-theme/static/578f/global.es6.js"></script>`

  - https://www.google-analytics.com/analytics.js

    - (no `<script type="module">` element found)

  - https://www.hattiesburgamerican.com/

    - (no `<script type="module">` element found)

  - https://www.investacrowd.com/

    - `<script src="/static/dist/assets/bundle.313424b850c7.js" type="module"></script>`

  - https://www.lcsun-news.com/

    - (no `<script type="module">` element found)

  - https://www.mydriver.com/

    - `<script src="/build/app/app.oblvknyz.js" type="module" crossorigin="true" data-resources-url="/build/app/" data-namespace="app"></script>`
    - `<script src="/build/app/app.oblvknyz.js" type="module" crossorigin="true" data-resources-url="/build/app/" data-namespace="app"></script>`

  - https://www.publicopiniononline.com/

    - (no `<script type="module">` element found)

  - https://www.ruidosonews.com/

    - (no `<script type="module">` element found)

  - https://www.shreveporttimes.com/

    - (no `<script type="module">` element found)

  - https://www.thecalifornian.com/

    - (no `<script type="module">` element found)

  - https://www.upwork.com/

    - (no `<script type="module">` element found)

  - https://x2001hide.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://xeddie017.pixnet.net/

    - (no `<script type="module">` element found)

  - https://yesmary158.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://yjpan2008.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ylang0824.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://yoyochia2008.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://ytchen1014.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://yuk7410.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://z12322100.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://zonbibi.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

  - https://zora0517.pixnet.net/

    - `<script src="http://pixgame-asset.pixfs.net/js/v1.5.1/pixgame--modern.min.js" type="module"></script>`

</details>
</p>

Of the 383 sites, Puppeteer couldn’t find a `<script type="module">` tag for 72 of them. I emailed one of the authors of the Google article to ask about this, and they replied that the sites might be loading ES modules via `import()` (which would be much harder for me to detect via Puppeteer) or the `<script type="module">` might be behind a paywall or login form or somewhere deeper in the site where my scraper wouldn’t see it.

Leaving those aside, though, I did find `<script type="module">` tags in 311 sites. Of those:

- 297 of 311 sites, **95%** of the dataset, use `<script type="module">` tags with `src` attributes containing URLs ending in `.js`.

- 8 of 311 sites, **3%** of the dataset, use `<script type="module">` tags with `src` attributes containing inline JavaScript source code, e.g. `src="data:text/javascript...`.

- 3 of 311 sites, **1%** of the dataset, use `<script type="module">` tags with an inline script.

- 3 of 311 sites, **1%** of the dataset, use `<script type="module">` to reference URLs ending in `.mjs`. One of these sites is the personal site of a developer who wrote [an article](https://philipwalton.com/articles/deploying-es2015-code-in-production-today/) encouraging the adoption of `.mjs`.

The code for reproducing this experiment is included in this repo. Check it out and run `npm install && npm start`. See `sites.yaml` for how to update the list of sites from Google’s latest data.
