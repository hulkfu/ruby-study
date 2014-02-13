class A
  def hi
    puts "hi"
  end
end

class B < A

end

class C < B

end


A.new.hi
B.new.hi

# 用class_eval打开一个类
def add_method_to(klass)
  klass.class_eval do
    def hi
      puts 'Hi'
    end
  end
end

add_method_to String
"say".hi

# 在类内方法定义外的变量是类的实例变量，在类内方法内的变量是类对象的实例变量。由于Ruby的作用域，除非扁平方式，否则不能相同。
class C
  @var = 1
  def self.read
    puts @var
  end

  def write
    @var = 2
  end

  def read
    puts @var
  end
end

c = C.new
c.write
c.read
C.read
