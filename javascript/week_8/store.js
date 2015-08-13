//Store
function Store(products) {
	this.catalog = new Catalog(products);
	this.cart = new Cart();
};

Store.prototype.getCatalog = function() {
	return this.catalog.getProducts();
};
Store.prototype.getCartItems = function() {
	return this.cart.getItems();
};
Store.prototype.getCartTotal = function() {
	return this.cart.total();
};
Store.prototype.addProductToCart = function(product) {
	this.cart.add(product);
};
Store.prototype.removeProductFromCart = function(product) {
	this.cart.remove(product);
};
Store.prototype.getCartTotal = function(){
	return this.cart.getTotal();
};

//Catalog
function Catalog(products) {
	this.products = products || [];
};

Catalog.prototype.getProducts = function() {
	return this.products;
};


//Cart
function Cart() {
	this.items = [];
};

Cart.prototype.getItems = function() {
	return this.items;
};
Cart.prototype.add = function(){
	this.items.push(products);
};
Cart.prototype.remove = function(){
	this.items.splice(this.items.indexOf(product), 1);
};
Cart.prototype.getTotal = function(){
	return this.items.reduce(function(total, item){
		return total += item.prices;
	}, 0);
};

//Run application
var products = [
	{id: 1, name: "Apple", price: 0.32 },
	{id: 2, name: "Oranges", price: 0.40 },
	{id: 3, name: "Bananas", price: 0.70 },
];

var myStore = new Store(products);

var peach = {}
console.log(myStore.getCatalog());