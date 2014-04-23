module M
  def s
    puts "super"
  end
end

class C
  include M
  def s
    puts "sub"
    super
  end

  def s(name)
    puts "s"
  end
end

C.new.s