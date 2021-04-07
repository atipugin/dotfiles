function mkrepo
  set dir $argv[1]
  mkdir -p $dir
  cd $dir
  git init
  touch .gitignore
  git add .
  git commit -m "First commit"
end
