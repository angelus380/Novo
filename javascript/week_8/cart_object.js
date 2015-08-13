var cart = {
  // code here...
 items: 0,
 total: function(){
 	console.log(this.items);
 },
 add: function(value){
  	this.items += value.price;
 },
 remove: function(value){
 	this.items -= value.price;
 },
};

var productA = { price: 5 };
var productB = { price: 10 };

cart.add(productA);
cart.add(productB);
cart.total(); // 15

cart.remove(productA);
cart.total(); // 10