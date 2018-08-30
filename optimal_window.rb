class MyQueue

  def initialize
    @q = []
  end

  def enqueue
    @q.shift  
  end

  def dequeue
    @q.push
  end

end