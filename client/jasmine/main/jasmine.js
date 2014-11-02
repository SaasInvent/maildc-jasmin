var test;

test = {};

beforeEach(function() {
  var flash, flashvars, params, rtmp;
  jasmine.getFixtures().fixturesPath = '/jasmine/spec/javascripts/fixtures';
  flash = $("#flash");
  rtmp = "ceci est un test";
  flashvars = {
    rtmp_url: rtmp
  };
  params = {
    allowScriptAccess: 'always'
  };
  return swfobject.embedSWF("http://t-www.working-box.com/flashplugin/maildc.swf", "flash", "0", "0", "9.0.0", null, flashvars, params, []);
});

describe('MailDC - Index', function() {
  return it('can get Index', function() {
    var result;
    result = maildc.index.getIndex("markus.bocker");
    return expect(result).toBeDefined();
  });
});

var _ref;

this.maildc = (_ref = this.maildc) != null ? _ref : {};

this.maildc.index = (function() {
  var Index, getIndex, name, saveIndex;
  name = "MailDC";
  Index = (function() {
    function Index(index) {
      this.index = index;
    }

    Index.prototype.getIndex = function(account) {
      var flash;
      flash = $("#flash");
      flash[0].getIndex(account);
      console.log(flash);
      return this;
    };

    Index.prototype.saveIndex = function(value) {
      console.log("saveIndex");
      console.log(value);
      console.log(this.index);
      return value;
    };

    return Index;

  })();
  saveIndex = function(value) {
    var index;
    index = new Index(value);
    return index.saveIndex(value);
  };
  getIndex = function(account) {
    var index;
    console.log(account);
    index = new Index(account);
    console.log(index);
    console.log(index.index);
    index;
    return this;
  };
  return {
    getIndex: getIndex,
    saveIndex: saveIndex
  };
})();
