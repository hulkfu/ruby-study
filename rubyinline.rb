require 'inline'

class C
  inline do |builder|
    builder.include "<stdio.h>"
    builder.c "
      int add(int a, int b) {
        return a+b;
      }"
  end
end

puts C.new.add 3, 1
