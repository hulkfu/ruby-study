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

##
# 最后一个参数可以是hash

def hi(options={})
  name = options[:name]
  age = options[:age]
  sex = options[:sex] || 'securet'
  puts "I am #{name}, I am #{age} and my sex is #{sex}"
end

hi(name:"Jim", age:18, sex:"male")
hi name:"Bill", age:18