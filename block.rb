class Dog
  def each(&block)

      block.call(self)

  end
  
  def hi
    puts "hi"
  end
end



Dog.new.each do |a|
  a.hi
end
