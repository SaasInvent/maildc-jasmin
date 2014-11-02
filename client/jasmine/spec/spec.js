var test;

test = {};

beforeEach(function() {
  var item2;
  test.basket = maildc.info.newBasket();
  test.item = maildc.info.newItem('001', 'Macbook', 'Newer better', '799');
  item2 = maildc.info.newItem('002', 'Un test', 'describe', '899');
  return test.basket.add(item2, 1);
});

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
    test = maildc.info.newBasket();
    console.log(test);
    console.log(result);
    return expect(result).toEqual("hallo");
  });
});

describe('Basket class', function() {
  return it('should be able to add a new Item to the basket', function() {
    var priorCountVal;
    priorCountVal = test.basket.distinctCount;
    console.log(priorCountVal);
    test.basket.add(test.item, 1);
    return expect(test.basket.totalCount).toEqual(priorCountVal + 1);
  });
});
