function vscode_restore_ext
  cat ~/.vscode_extensions.txt | xargs -L1 code --install-extension
end
