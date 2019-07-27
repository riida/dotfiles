if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# ~ が <TAB> で展開されるのが嫌なので無効にする
_expand () { return 0; }

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

eval "$(rbenv init -)"

# for node.js
export PATH="/Users/riida/.nodebrew/current/bin:$PATH"

# for mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# for gcloud
# export PATH="${HOME}/bin/google-cloud-sdk/bin:$PATH"

# https://bcb.github.io/python/mac-repl-readline
export PYTHONSTARTUP=$HOME/.pythonstartup.py
