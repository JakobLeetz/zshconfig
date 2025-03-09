# Set default user
export DEFAULT_USER="jakob"

export PATH="$HOME/.rvm/bin:/Users/jakob/Library/Python/3.9/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:/System/Cryptexes/App/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/iTerm.app/Contents/Resources/utilities"

# Oh-My-Zsh setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git macos)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster
alias -- -="cd -"
alias o="open ."

# Python Aliases
alias python="python3"
alias pip="pip3"
alias venv="python3 -m venv"

# Git Aliases
alias g="git"
alias pull="git pull --rebase"
alias undo="git reset --soft HEAD~"
alias amend="git commit -av --amend --no-edit"
alias commit="git commit -m $1"
alias add="git add"
alias push="git push"

# Brew Aliases
alias install="brew install"
alias uninstall="brew uninstall"

# Other Aliases
alias ll="ls -la -G"
alias zshconfig="code ~/.zshrc"
alias show='pygmentize -O style=monokai -f console256 -g'
alias r1="ollama run deepseek-r1:8b"
unalias md

# Functions
function tp() {
    mkdir -p "$(dirname "$1")" && touch "$1"
}

function md() {
    mkdir "$1" && cd "$1"
}

function hl() {
    highlight -O rtf "$1" | pbcopy
    echo "Code is copied to clipboard"
}

function code() {
    open -a "/Applications/Visual Studio Code.app" "$1"
}

# Go to root of Git project or one folder up
function up() {
    local git_dir="$(git rev-parse --show-toplevel 2>/dev/null)"
    if [[ -z "$git_dir" ]]; then
        cd ..
    else
        cd "$git_dir"
    fi
}

# Ruby setup
#eval "$(rbenv init - zsh)"
