def my_method( a='Testing', b='this', c='feature' )
  puts "#{a} #{b} #{c}"
end

my_method
my_method( 'Trying out' )
my_method( 'Testing', 'this great' )

def hello(*params)
  params.each do |param|
    puts param
  end
  puts params
end

hello "hi","d"
