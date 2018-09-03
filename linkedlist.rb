class LinkedList
  attr_accessor :first

  def initialize data
    if data.is_a? Array
      current = Node.new nil
      data.each_with_index do |d, i|
        if i == 0
          self.first = current
        end
        current.data = d
        puts current.data.to_s
        current.next = Node.new nil
        current = current.next
      end
    else
      self.first = Node.new data
    end
  end

  def head
    self.first
  end

  def tail
    self.first.next
  end

  def append data
    new_head = Node.new data
    new_head.next = self.first
    self.first = new_head
  end

  def print_nodes
    pn_rec self.first
  end

  def pn_rec node
    if node.next == nil
      puts node.data.to_s
    else
      puts node.data.to_s
      pn_rec node.next
    end
  end


  def index index
    self.index_rec index, 0, self.first
  end

  def index_rec index, count, node
    if index == count
      node.data
    else
      self.index_rec index, count + 1, node.next
    end
  end

  class Node
    attr_accessor :data
    attr_accessor :next

    def initialize data
      self.data = data
    end
  end
end
