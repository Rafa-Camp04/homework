require "byebug"

class Stack

    def initialize
      # create ivar to store stack here!
        @stack = []
    end
  
    def push(el)
      # adds an element to the stack
        @stack << el
    end
  
    def pop
      # removes one element from the stack
      @stack.pop
    end
  
    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end

    def inspect
        @stack.inspect
    end

end

  stack = Stack.new

stack.push(1)
puts stack.inspect

stack.push(2)
puts stack.inspect

stack.push(3)
puts stack.inspect

p stack.peek
stack.pop
p stack.peek


