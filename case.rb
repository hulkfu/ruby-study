
# determine the type of the value
def type(o)
  case o
  when String
    puts "String"
  when Array
    puts "Array"
  when Object
    puts "Object"
  else
    puts "ohters"
  end
end

a = "1"
b = Object.new
c = [1]
type a
type b
type c
p c.class
