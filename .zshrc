# -----------------------------
# Zsh Configuration (cleaned)
# -----------------------------

setopt prompt_subst
export PROMPT='[ 󰣇 ][ %* ][ ${${${PWD/#$HOME/~}/.config/}/Documents/󰏢} ]%# '

# History
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt append_history   # add new commands instead of overwriting
setopt share_history    # share history across terminals

# Autocomplete
autoload -Uz compinit
compinit
setopt AUTO_MENU

# -----------------------------
# Plugins (clone once if missing)
# -----------------------------
[[ ! -d ~/.zsh/zsh-autosuggestions ]] && \
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
[[ ! -d ~/.zsh/zsh-syntax-highlighting ]] && \
    git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
[[ ! -d ~/.zsh/zsh-completions ]] && \
    git clone https://github.com/zsh-users/zsh-completions ~/.zsh/zsh-completions

# Source plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(~/.zsh/zsh-completions $fpath)

# -----------------------------
# Aliases
# -----------------------------
alias ¿='yay -S'
alias ¶='sudo pacman -S'
alias pamcan='pacman'
alias clock='tty-clock -c -C 7 -t -B'
alias gc='git clone'
alias ls='eza --icons'
# Function to install packages from pacman or yay
arch_install() {
    for pkg in "$@"; do
        if pacman -Si "$pkg" &> /dev/null; then
            echo "Installing $pkg from official repos..."
            sudo pacman -S "$pkg"
        else
            echo "Not on official repos, trying to install $pkg from AUR..."
            yay -S "$pkg"
        fi
    done
}

# -----------------------------
# Clear terminal on startup
# -----------------------------
clear
fastfetch

# opencode
export PATH=/home/zay/.opencode/bin:$PATH
export PATH="$HOME/bin:$PATH"
