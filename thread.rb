require 'thread'

t1 = Thread.new do
  sleep 1
  puts "OK"
  '123'
end

# 加上join，程序就会等t1执行完后再停止。
t1.join
# value方法就是读取线程的返回值，此时不用join也会等待的。
puts t1.value