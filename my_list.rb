require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

mylist = MyList.new([1, 2, 3, 4, 5])
puts(mylist.all? { |e| e < 5 })
puts(mylist.all? { |e| e > 5 })
puts(mylist.any? { |e| e == 2 })
puts(mylist.any? { |e| e == 5 })
p(mylist.filter(&:even?))
