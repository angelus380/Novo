angular
	.module('storeApp', 1)
	.directive('storeCatalog', storeCatalog)
	.directive('storeCart', storeCart)

	.controller('CatalogCtrl', CatalogCtrl)
	.controller('CartCtrl', CartCtrl)
	.factory('Store', StoreService);


function storeCatalog() {
	return {
		restrict: 'A',
		templateUrl: 'catalog.html',
		controller: 'CatalogCtrl',
		controllerAs: 'ctrl',
		scope: {}
	};
};

function CatalogCtrl(Store){
	var ctrl = this;
	ctrl.title = "Catalog";
	ctrl.currency = " $";
	ctrl.addToCart = function() {
		Store.addProductToCart(product);
	};
	ctrl.products = Store.getCatalog();
};

function CartCtrl(Store){
	var crtl = this;
	ctrl.items = Store.cart.items;
	ctrl.store = Store;
	ctrl.remove = function(item){
		Store.removeProductFromCart(item)
		}
	}
function StoreService(){

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
};

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

var products =[
	{id: 1, name: "Apple", price: 0.32 },
	{id: 2, name: "Oranges", price: 0.40 },
	{id: 3, name: "Bananas", price: 0.70 },
	];
