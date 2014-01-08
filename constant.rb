# 任何以大写字母开头的引用（包括类名和模块名），都是常量
module M
  class C
    X = 'X'
    # 通过::来使用绝对路径
    ::M::Y = "Y"
  end

  puts C::X
  puts Y # 这样可以，因为在C里定义了M下的Y
  # puts X # this is wrong
end

puts M::C::X