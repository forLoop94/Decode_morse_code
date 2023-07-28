module MyEnumerable
  def all?
    @list.each do |element|
      return false if yield(element) == false
    end
    true
  end
end
