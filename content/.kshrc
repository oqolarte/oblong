export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

set -o emacs

alias nv='nvim'
alias ls='colorls -ACFG'
alias ll='colorls -lh'
alias la='colorls -lAh'
alias ~='cd ~'
alias ..='cd ..'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias kshrc='nvim ~/.kshrc'
alias zxcv='doas halt -p'
alias qwer='doas reboot'
alias hugc='hugo --cleanDestinationDir --gc --minify'
alias hs='hugo server'
alias moon='curl wttr.in/moon'
alias wea='curl wttr.in'
alias nurls='nvim ~/.newsboat/urls'
alias gits='git status'
alias gita='git add .'
alias gitca='git commit -a'
alias gitpp='git push -u origin main'
alias gito='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519'
alias suckless='doas make uninstall && doas make install'

# show contents of dir after changing to it
function cd {
		builtin cd "$1"
		colorls -ACFG
}

# nice colored prompt that also sets xterm title
_XTERM_TITLE='\[\033]0;\u@\h: \w\007\]'
_PS1_CLEAR='\[\033[0m\]'
_PS1_BLUE='\[\033[34m\]'
case "$(id -u)" in
  0) _PS1_COLOR='\[\033[1;31m\]' ;;
  *) _PS1_COLOR='\[\033[32m\]'   ;;
esac
PS1='$_XTERM_TITLE $_PS1_BLUE\w $_PS1_COLOR\$$_PS1_CLEAR '
