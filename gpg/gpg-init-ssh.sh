if [ "${HOME}/.gnupg/gpg-agent-info" ]; then
  source "${HOME}/.gnupg/gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
  export SSH_AGENT_PID
else
  eval $(gpg-agent --daemon --write-env-file "${HOME}/.gnupg/gpg-agent-info")
fi
