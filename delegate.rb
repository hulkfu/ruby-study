require 'delegate'

class Man

  def left
    puts "<-"
  end

  def right
    puts "->"
  end
end

class Car < DelegateClass(Man)
  def initialize(man)
    super(man)
  end
end

m = Man.new
c = Car.new m
c.left
