function kop
  set port $argv[-1]
  if ! test -n  "$port"
    echo 'no port given'
    return 1
  end

  set sig $argv[1]
  if test $sig -eq $port
    set sig '-SIGTERM'
  end

  lsof -i ":$port" -t | xargs kill "$sig"
end
