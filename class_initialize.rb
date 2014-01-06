class A
  def initialize str1="I am A"
    puts str1
  end
end

class B<A
  def initialize str="I am B"
    super # 可见调用的只是方法，相当于A.initialize(str)被调用了
    puts str
  end
end

b = B.new

# Result：
# I am B
# I am B
