
if command -v npm > /dev/null 2>&1 ; then
  npm i -g biome
  npm i -g intelephense
  npm i -g typescript-language-server
  npm i -g bash-language-server
  npm i -g sql-language-server
  npm i -g vscode-langservers-extracted
fi

if command -v go > /dev/null 2>&1 ; then
  go install golang.org/x/tools/gopls@latest                               # LSP
  go install github.com/go-delve/delve/cmd/dlv@latest                      # Debugger
  go install golang.org/x/tools/cmd/goimports@latest                       # Formatter
  go install github.com/nametake/golangci-lint-langserver@latest           # Linter
  go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@latest # Linter cli
fi

if command -v cargo > /dev/null 2>&1 ; then

fi
