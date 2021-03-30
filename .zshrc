# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
#source $HOME/dotfiles/aliases


alias explorer="explorer.exe ."

function zi() {echo "sudo apt-get install $1" >> ~/Setup/linux.txt && sudo apt-get install $1}
function zu() {echo "sudo apt-get update" >> ~/Setup/linux.txt && sudo apt-get update}
function zr() {echo "sudo add-apt-repository $1" >> ~/Setup/linux.txt && sudo add-apt-repository} 



export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export PYENV_ROOT=$HOME/.pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi


