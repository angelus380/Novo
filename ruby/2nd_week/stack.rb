class Stack

	def initialize
		@number = []
	end

	def push(number)
		@number.push(number)
	end

	def pop
		@number.pop
	end

end

stack = Stack.new
stack.push(2)
stack.push(3)
p stack.pop # => 3
p stack.pop # => 2
p stack.pop # => nil

class Queue
	def initialize
		@number = []
	end

	def enqueue(number)
		@number.push(number)
	end

	def dequeue
		@number.delete_at(0)
	end
end

queue = Queue.new
queue.enqueue(2)
queue.enqueue(3)
p queue.dequeue # => 2
p queue.dequeue # => 3
p queue.dequeue # => nil

