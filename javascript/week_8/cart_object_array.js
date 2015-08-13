var cart = {
  // code here...
 items:[],	
 add: function(product){
 	this.items.push(product);
 },
 remove: function(product){
 	index = this.items.indexOf(product);
 	this.items.splice(index, 1);
 },
 total: function(){
 	var priceTotal = 0;
 	this.items.forEach(function(value){
 		priceTotal += value.price;
 	});
 	return priceTotal;
 }

};

var productA = { price: 5 };
var productB = { price: 10 };

cart.add(productA);
cart.add(productB);
console.log(cart.total()); // 15

cart.remove(productA);
console.log(cart.total()); // 10