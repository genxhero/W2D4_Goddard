class MyQueue

  def initialize
    @store = []
  end

  def enqueue(item)
    @store << item
  end

  def dequeue
    @store.shift
  end
  
  def peek
    @store.first
  end
  
  def size
    @store.count
  end
  
  def empty?
    @store.empty?
  end

end

class MyStack
  
  def initialize
   @store = []
  end
  
  def push(item)
    @store << item
  end

  def pop
    @store.pop
  end
  
  def peek
    @store.last
  end
  
  def size
    @store.count
  end
  
  def empty?
    @store.empty?
  end
  
end