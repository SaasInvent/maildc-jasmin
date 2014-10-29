# calculatorSpec.coffee

test = {}

beforeEach ->
  test.basket = maildc.info.newBasket()
  test.item = maildc.info.newItem '001', 'Macbook', 'Newer better', '799'
  item2 = maildc.info.newItem '002', 'Un test', 'describe', '899'
  test.basket.add item2, 1
  

describe 'MailDC', ->

    it 'can set name', ->
        result = maildc.info.setName "hallo"
        expect(result).toBe "hallo"

    it 'can get name', ->
        name = maildc.info.setName "hallo"
        result = maildc.info.getName()
        test = maildc.info.newBasket()
        console.log test
        console.log result
        expect(result).toEqual "hallo"
        
describe 'Basket class', ->
  
    it 'should be able to add a new Item to the basket', ->
        priorCountVal = test.basket.distinctCount
        console.log priorCountVal
        test.basket.add(test.item, 1)
        expect(test.basket.totalCount).toEqual priorCountVal + 1
        
         