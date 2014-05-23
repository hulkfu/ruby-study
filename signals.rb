Signal.trap("INT") { |signo| puts Signal.signame(signo) }
Process.kill("INT", 0)