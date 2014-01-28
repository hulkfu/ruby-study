var = "hi"


C = Class.new do
  puts var

  define_method :hi do
    puts var
  end
end

C.new.hi

def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    p local_variables
    shared
  end

  Kernel.send :define_method, :inc do |x|
    p local_variables
    shared += x
  end

end

define_methods

puts counter
inc 3
puts counter
