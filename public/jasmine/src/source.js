var _ref;

this.maildc = (_ref = this.maildc) != null ? _ref : {};

this.maildc.info = (function() {
  var Basket, Item, getName, name, newBasket, newItem, setName;
  name = "";
  Basket = (function() {
    function Basket(id) {
      this.id = id;
    }

    Basket.prototype.items = [];

    Basket.prototype.distinctCount = 0;

    Basket.prototype.totalCount = 0;

    Basket.prototype.add = function(item, quantity) {
      this.items.push(item);
      this.distinctCount++;
      return this.totalCount++;
    };

    return Basket;

  })();
  Item = (function() {
    function Item() {}

    Item.prototype.contructor = function(id) {
      this.id = id;
    };

    return Item;

  })();
  newBasket = function() {
    return new Basket();
  };
  newItem = function(item, quantity, price) {
    return new Item();
  };
  getName = function() {
    return name;
  };
  setName = function(value) {
    return name = value;
  };
  return {
    getName: getName,
    setName: setName,
    newBasket: newBasket,
    newItem: newItem
  };
})();
