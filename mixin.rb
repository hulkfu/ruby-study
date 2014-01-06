class Stream < Object
  puts "Stream"
end

module Readable
  def read
    puts "read"
  end
end

module Writeable
  def write
    puts "write"
  end
end

class ReadStream < Stream
  include Readable
end

class WriteStream < Stream
  include Writeable
end

class ReadWriteStream < Stream
  include Readable
  include Writeable
end

ReadWriteStream.new.write