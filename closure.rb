def extent
  n = 0
  -> {
    n+=1
    printf "n=%d\n", n
  }
end

f = extent()
f.()
f.()
a f.method(:call)
