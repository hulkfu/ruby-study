obj = Object.new
eigenclass = class << obj
  self
end

def obj.my_singleton_method; end
puts eigenclass.instance_methods.grep(/my_/)


s1, s2 = "abc", "def"
s1.instance_eval do
  def swoosh!
    reverse
  end
end
p s1.swoosh!
p s2.respond_to? :swoosh!

class C
  # 这里打开的是C的定义，所以里面是在C的eigenclass里建的方法，所以是其类方法。
  class << self
    def a_class_method
      'C.a_class_method'
    end
  end
end

class D < C
end

puts D.a_class_method
