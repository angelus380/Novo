Array.range = function(start, count){
	var arr = [],
		val = start;
	while (count > 0) {
		arr.push(val);
		count--;
		val++;
	}
	return arr;
};

console.log(Array.range(0, 3));
// Array.range(start, count)


Array.prototype.sum = function(){
	return this.reduce(function(sum, val) {
		return sum + val;
	})
};

console.log([1,2,3].sum);