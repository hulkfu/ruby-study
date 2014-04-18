class C
  def m
    @val = 7
    binding
  end
end

b = C.new.m
eval "puts @val", b
