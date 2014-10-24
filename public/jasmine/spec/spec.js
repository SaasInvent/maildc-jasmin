describe('MailDC', function() {
  it('can set name', function() {
    var result;
    result = maildc.info.setName("hallo");
    return expect(result).toBe("hallo");
  });
  return it('can get name', function() {
    var name, result;
    name = maildc.info.setName("hallo");
    result = maildc.info.getName();
    console.log(result);
    return expect(result).toEqual("hallo");
  });
});
