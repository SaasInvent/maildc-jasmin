var _ref;

this.maildc = (_ref = this.maildc) != null ? _ref : {};

this.maildc.info = (function() {
  var age, eat, getAge, getName, name, setAge, setName;
  name = "";
  getName = function() {
    return name;
  };
  setName = function(value) {
    return name = value;
  };
  age = 0;
  getAge = function() {
    return age;
  };
  setAge = function(value) {
    return age = value;
  };
  eat = function(food) {
    if (food != null) {
      return alert("Yummy " + food + "!");
    } else {
      return alert("I'm still hungry!");
    }
  };
  return {
    getName: getName,
    setName: setName,
    getAge: getAge,
    setAge: setAge,
    eat: eat
  };
})();
