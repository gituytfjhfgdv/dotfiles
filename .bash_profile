export PATH="/usr/local/opt/openssl/bin:$PATH"
# pyenv-virtualenvのため追加
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
