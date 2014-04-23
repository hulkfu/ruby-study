# 匿名块
def f1
  yield if block_given?
end

# 带名字的块
def f2(name, &p)
  p.call(name)
end

# 就是一个参数，可以是个块
def f3(p)
  p.call
end

f1 { puts "f1" }

f2('Aston') { |name| puts "f2# name: #{name}" }

f3(proc{ puts "f3"} )
f3(Proc.new{puts "f3"})
f3(lambda{puts "f3"})
f3(-> {puts "f3"})

def f4(&p)
  puts p.class
  puts p.inspect
  p.call
end

f4 {}


# 用 & 可以将proc或者lambda变成一个块
def f5
  puts "Hello, #{yield}"
end

f5 { "World" }
p = -> { "World" }
f5 &p

# proc 和 lambda的区别
def f6(callable)
  callable.call * 2
end

l = -> { return 10 }
puts f6(l)
p = proc { return 10 }
# LocalJumpError，因为proc会在定义它的作用域里返回，而lambda仅仅从这个lambda返回
puts f6(p)

