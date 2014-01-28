class A
  def hi
    puts "hi"
  end
end

class B < A

end

class C < B

end


A.new.hi
B.new.hi