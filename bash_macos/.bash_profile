export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# .profile
export PATH="/usr/local/sbin:$PATH"
export CLICOLOR=1

export EDITOR=nano
export VISUAL=code

export PGDATA='/usr/local/var/postgres'

new_tag() {
  local folder=$(basename `pwd`)
  echo "$folder-`date '+%Y%m%d%H%M%S'`"
}

# ssh-add -K ~/.ssh/id_rsa

source ~/.git/git-completion.bash

# ruby-build and openssl
eval "$(rbenv init -)"
# These lines of code will ruin your day!
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

## INITMUX
function rotm() {
    echo 1 | initmux && tmux a -t rotm
}
function work() {
    echo 2 | initmux && tmux a -t work
}
# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Postgres 12
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/postgresql@12/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@12/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@12/lib/pkgconfig"

# MySQL 5
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.6/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.6/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.6/lib/pkgconfig"
# Start on Login
# brew services start mysql@5.6
# Start server.
# /usr/local/opt/mysql@5.6/bin/mysql.server start

# Elasticsearch
export PATH="/Users/luis.geniole/code/misc/elasticsearch/bin:$PATH"

# Android/Expo
export ANDROID_SDK=/Users/luis.geniole/Library/Android/sdk
export PATH=/Users/luis.geniole/Library/Android/sdk/platform-tools:$PATH

export PATH="~/.norminette/:$PATH"
# alias norminette="~/.norminette/norminette"
