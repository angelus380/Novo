var products = [
  { name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" },
  { name: "LG G Flex", price: 689.90, brand: "LG" },
  { name: "Apple iPhone 6 Plus", price: 779.90, brand: "Apple" },
  { name: "Samsung Galaxy Alpha", price: 589.90, brand: "Samsung" },
  { name: "Nokia Lumia 930", price: 489.90, brand: "Nokia" },
  { name: "Sony Xperia Z3 Compact", price: 389.90, brand: "Sony" },
  { name: "Apple iPhone 6", price: 779.90, brand: "Apple" },
  { name: "Huawei Ascend G7", price: 259.90, brand: "Huawei" },
  { name: "Sony Xperia T2 Ultra", price: 359.90, brand: "Sony" },
  { name: "LG G4", price: 589.90, brand: "LG" },
  { name: "Samsung Galaxy Note 4", price: 689.90, brand: "Samsung" },
  { name: "HTC One M9", price: 674.90, brand: "HTC" },
  { name: "Apple iPhone 5S", price: 589.90, brand: "Apple" }
];

var collection = new ProductCollection(products);

function ProductCollection (products) {
  this.products = products;
};

ProductCollection.prototype.count = function() {
  return this.products.length
};

ProductCollection.prototype.names = function() {
  return this.products.map(productName);
  function productName(product) {
    return product.name;
  }
};

ProductCollection.prototype.filter_by_brand = function(brand) {
  return this.products.filter(function(product) {
    return product.brand === brand
  });
};

ProductCollection.prototype.group_by_brand = function(brand) {
  return this.products.reduce(function(accumulator, product) {
    if (accumulator[product.name]) {
      accumulator[product.brand] = [];
    }
  });
};