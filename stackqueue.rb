require_relative "mystack.rb"

class StackQueue
  
  def initialize(arr=[])
    @front = MyStack.new
    @rear = MyStack.new(arr)
  end
  
  def size
    @rear.count
  end
  
  def empty?
    @rear.empty?
  end

  def dequeue
    @front.push(@rear.pop)
  end
  
  def enqueue
    @rear.push(@front.pop)
  end

  def slinkytime(n)
    n.times do |i|
      self.dequeue until self.empty?
      puts "It falls down off of step #{i + 1}..."
      self.enqueue until @front.empty?
      puts "...and stacks back up on step #{i + 2}"
    end
  end

end