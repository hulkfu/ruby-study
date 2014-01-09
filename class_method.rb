class C
  def self.class_hi
    puts "class hi"
  end

  def instance_hi
    puts "instance hi"
  end

  class_hi
  instance hi #执行到这里会出错。因为当前的self在类内方法外，因此引用的是当前类C，即这句代码相当于C.instance_hi，当然错。
end

c = C.new