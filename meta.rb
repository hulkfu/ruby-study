class Module
  def hi(*syms)
    syms.each do |sym|
      puts sym
    end
  end
end

class Dog
  hi "a", "b", "d"
  attr_accessor :name, :age
end

d = Dog.new
d.name = "ad"

Duck = Class.new do
  define_method :quack do
    "quack"
  end
  def fly
    "fly"
  end
end

puts Duck.new.fly
