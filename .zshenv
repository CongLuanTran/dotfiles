# Add some directories that should be in PATH by default but weren't
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
# Add a directories for npm global installs to PATH
export PATH="$HOME/.npm-global/bin:$PATH"
# Add lua language server bin to PATH
export PATH="$HOME/src/lsp/lua-language-server/bin:$PATH"

. "$HOME/.cargo/env"
