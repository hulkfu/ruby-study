class A
  def echo(str)
    puts str
  end
end

a = A.new
a.echo "hi"
a.send :echo, "hi"

define_method :echo do |arg|
  puts arg
end

echo "hi"

class B
  def method_missing(method, *args)
    puts "called #{method}(#{args.join(',')})"
    puts "with a block" if block_given?

  end
end

B.new.test(1, 2) { }
