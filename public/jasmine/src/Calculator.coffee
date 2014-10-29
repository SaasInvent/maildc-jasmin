@maildc = @maildc ? {}

@maildc.info = do ->
	#private
  name = ""
  class Basket
    constructor: (@id)->
      
    items: []
    distinctCount: 0
    totalCount: 0
    
    add: (item, quantity) -> 
       @items.push item
       @distinctCount++
       @totalCount++
    
  class Item
    contructor: (@id)->
    
  newBasket = -> 
    new Basket()

  newItem = (item, quantity, price) -> 
    new Item()
    
  getName = -> name
  setName = (value) -> name = value



	# public
  getName: getName
  setName: setName
  newBasket: newBasket
  newItem: newItem