autoload -U compinit
autoload -Uz colors
colors
compinit
autoload -Uz vcs_info # VCSの情報を取得するzsh関数
setopt prompt_subst

export PATH="/usr/local/opt/openssl/bin:$PATH"
# rubyのpathを通す。
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

zstyle ':vcs_info:git:*' check-for-changes true #formats 設定項目で %c,%u が使用可
zstyle ':vcs_info:git:*' stagedstr "%F{green}!" #commit されていないファイルがある
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+" #add されていないファイルがある
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f" #通常
zstyle ':vcs_info:*' actionformats '[%b|%a]' #rebase 途中,merge コンフリクト等 formats 外の表示

# %b ブランチ情報
# %a アクション名(mergeなど)
# %c changes
# %u uncommit

precmd () { vcs_info }
# prompt
PROMPT='%{$fg[cyan]%}🐱🍮%n@%c]%{$reset_color%}'
PROMPT=$PROMPT'${vcs_info_msg_0_} %{${fg[blue]}%}%}$%{${reset_color}%} '
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"

alias dc='docker-compose'
alias be='bundle exec'

# pyenv nvimのセットアップのため
eval "$(pyenv init -)"

export PGDATA='/usr/local/var/postgres'

# pecoの履歴検索
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# rust
export PATH="$HOME/.cargo/bin:$PATH"
