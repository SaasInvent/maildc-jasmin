# calculatorSpec.coffee

test = {}




beforeEach ->
    jasmine.getFixtures().fixturesPath = '/jasmine/spec/javascripts/fixtures'
    #loadFixtures("flash-fixture.html")
    #setFixtures(sandbox({id: 'flash'}))
    flash = $("#flash")
    rtmp = "ceci est un test"
    # flashvars =   { rtmp_url: 'rtmp://54.229.198.3/phone'};
    flashvars =   { rtmp_url: rtmp}
    params  = {allowScriptAccess: 'always'}
    swfobject.embedSWF("http://t-www.working-box.com/flashplugin/maildc.swf", "flash", "0", "0", "9.0.0", null, flashvars, params, [])

    

describe 'MailDC - Index', ->
    it 'can get Index', ->
        result = maildc.index.getIndex("markus.bocker")
        expect(result).toBeDefined()
