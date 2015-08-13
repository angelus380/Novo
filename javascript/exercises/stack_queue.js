
function Stack(){
	this.array = [];
};

Stack.prototype.push = function(num) {
	array.push(num);
	console.log(array);

};

Stack.prototype.pop = function() {
	array.pop();
	console.log(array);
};

stack = new Stack();
stack.push(2);
stack.push(3);
stack.pop(); // => 3
stack.pop(); // => 2
stack.pop(); // => nil




function Queue() {
	array = [];
	this.array = array;
}

Queue.prototype.enqueue = function(num) {
	this.array.unshift(num);
	console.log(this.array);
};
	
Queue.prototype.dequeue = function() {
	this.array.pop();
	console.log(array);
};

queue = new Queue();
queue.enqueue(2);
queue.enqueue(3);
queue.dequeue(); // => 2
queue.dequeue(); // => 3
queue.dequeue(); // => nil