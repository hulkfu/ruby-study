class A
  def hi
    puts "hi"
  end
end

a = A.new
a.tap {|x| puts x}.hi

b = ["a", "b"]
puts b
b.map {|x| x<<"1"}
puts b

# yield就是把块插到yield处执行

def a_m(x, y)
  p local_variables
  x + (block_given? ? yield(x, y) : 0)
end

puts a_m(1, 2) {|x, y| x*y + y}
puts a_m(1, 2)


def using(object)
  begin
    yield
  ensure
    object.disposed = true
  end
end


puts "local variables: #{local_variables}"

