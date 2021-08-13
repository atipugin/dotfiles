function kop
  set port $argv[-1]
  if test -z "$port"
    echo 'no port given'
    return 1
  end

  set sig $argv[1]
  if test $sig -eq $port
    set sig '-SIGTERM'
  end

  set pid (lsof -i ":$port" -t)
  if test -z "$pid"
    echo 'port is not used'
    return
  end

  kill "$sig" "$pid"
end
