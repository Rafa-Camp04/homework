require "byebug"

class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[-1]
    end

    def inspect
        @queue.inspect
    end

end

queue = Queue.new

queue.enqueue(1)
puts queue.inspect

queue.enqueue(2)
puts queue.inspect

queue.enqueue(3)
puts queue.inspect

queue.dequeue
puts queue.inspect

puts queue.peek