class A
  def hi
    puts "hi"
  end

private
  def se_hi
    puts "private hi"
  end
end

a = A.new
a.hi
# a.se_hi
# 使用send可以调研private方法。
a.send(:se_hi)
