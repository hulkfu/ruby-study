require 'thread'

queue = []

producer = Thread.new do
  5.times do |i|
    sleep rand(i) # simulate expense
    queue << i
    puts "#{i} produced"
  end
end

consumer = Thread.new do
  5.times do |i|
    # 在pop的时候如果queue为空，则等待有数据，如果non_block参数设置为true（默认是false），那么将会不等待然后报异常。
    value = queue.pop
    sleep rand(i/2) # simulate expense
    puts "consumed #{value}"
  end
end

consumer.join