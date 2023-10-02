module Enumerable
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.each do |elem|
      yield(elem)
    end
  end
  def my_each_with_index
    self.each_with_index do |elem, idx|
      yield(elem, idx)
    end
  end
  def my_select
    self.select { |value| yield(value) }
  end
  def my_all?
    self.all? { |value| yield(value) }
  end
  def my_any?
    self.any? { |value| yield(value) }
  end

  def my_none?
    self.none? { |value| yield(value) }
  end

  def my_count
    block_given? ? self.count { |value| yield(value) } : self.size
  end

  def my_map
    self.map { |value| yield(value) }
  end


  def my_inject(i=0)
    self.reduce(i) { |sum, value| yield(sum, value) }
  end
  
end
