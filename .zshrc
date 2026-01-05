# Original Prompt
# PROMPT='%n@%m %1~ %#'
# My Prompt
# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
PROMPT="🤠 %B%F{yellow}%n@%m %1~ %# %f%b"

# LS colors and alias
# https://geoff.greer.fm/lscolors/
export LSCOLORS=Gxfxcxdxbxegedabagacad
alias ls='ls -G'

# Apple man page styling
# https://scriptingosx.com/2017/04/on-viewing-man-pages/
xman() {
  open x-man-page://"${@}"
}
alias man="xman"

# iCloud path
export ICLOUD=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs

# Launch VS Code
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
