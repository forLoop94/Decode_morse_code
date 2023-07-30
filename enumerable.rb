module MyEnumerable
  def all?
    @list.each do |element|
      return false if yield(element) == false
    end
    true
  end

  def any?
    @list.each do |element|
      return true if yield(element) == true
    end
    false
  end

  def filter
    arr = []
    @list.each do |element|
      arr << element if yield(element)
    end
    arr
  end
end
