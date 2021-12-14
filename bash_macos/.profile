export PATH="/usr/local/sbin:$PATH"
export CLICOLOR=1
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"
export EDITOR=nano
export VISUAL=code

## Add ssh key.
# ssh-add -K ~/.ssh/id_rsa

source ~/.git/git-completion.bash
