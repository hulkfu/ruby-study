class C
  # self define blank class，其实BasicObject类就是白板类，集成它就是个白板类了
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /^__|object_id|method_missing|respond_to?/
  end

  def method_missing(method, *args)
    super if method.to_s == "no_method"
    puts "You called: #{method}(#{args.join(', ')})"
    puts "(You also passed it a block)" if block_given?
  end
end

c = C.new
c.hi "World"
c.send :method_missing, :d
c.no_method
