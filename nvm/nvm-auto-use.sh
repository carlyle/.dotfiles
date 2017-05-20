autoload -U add-zsh-hook

function load-nvmrc {
  local node_version="$(node --version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" != "N/A" ] && [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use "$nvmrc_node_version"
    elif [ "$nvmrc_node_version" == "N/A" ]; then
      nvm install
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc

load-nvmrc
