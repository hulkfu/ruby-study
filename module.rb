module M1
  def hi
    puts "hi"
  end

  module_function :hi
end

module M2
  extend M1
end

module M3
  module ClassMethods
    def hi
      puts "hi"
    end
  end

  extend ClassMethods
end

M1.hi  #=> hi
M2.send :hi  #=> hi
M3.hi  #=> hi
