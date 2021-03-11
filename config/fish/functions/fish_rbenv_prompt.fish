function fish_rbenv_prompt
  if test -f .ruby-version; and command -q rbenv
    rbenv version-name
  end
end
