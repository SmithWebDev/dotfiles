export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
#<<<<<<< HEAD
#source $HOME/dotfiles/aliases
#=======


##############################
#          ALIAS             #
##############################

# ColorLS (ruby gem)
# ----------------------------
alias ls='colorls --sort-dirs'
alias lsa='colorls -A --sort-dirs'
alias lst='colorls --tree --light'

# Config files
# ----------------------------
alias zshc='nvim ~/.zshrc'
alias szsh='source ~/.zshrc'
alias nvc='nvim ~/.config/nvim/init.lua'
alias tmc='nvim ~/.tmux.conf'

# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit -m'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gcl='git clone $1'
alias gd='git diff'
alias gda='git diff HEAD'
alias gho='git hash-object'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge'
alias gmnff='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp="git push"
alias gpu="git push -u"
alias gpull='git pull'
alias gpullr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

alias grao="git remote add origin"
alias gpuo="git push -u origin"
alias grsu="git remote set-url"

alias gphm='git push heroku master && heroku run rake db:migrate && heroku restart'
#-----------------
# Git Functions
#-----------------

#------- Git log find by commit message
function glf() { git log --all --grep="$1"; }

#------- Initial Git Commit
function gic() { git add . && git commit -m "initial commit";}

#------- Git Merge => Master
function gmerge() { git checkout master && git merge $1 && git push;}

#------- Git commit & push to branch
function gcpu() { git add . && git commit -m "$1" && git push -u origin $2;}

#------- Git commit & upstream push
function gacp() { git add . && git commit -m "$1" && git push;}

#------- Git add remote && push
function grap() { git remote add origin $1 && git push -u origin master;}

#     Rails
# ----------------------------
alias rs='rails s'
alias rc='rails c'

#---- Bundle Alias
alias bi='bundle install'
alias biwp='bundle install --without production'
alias bu='bundle update'

#---- Database Alias ---------
alias rdbmig='rails db:migrate'
alias rdbseed='rails db:seed'

#---- Devise Setup Alias
alias rgdi='rails g devise:install'
alias rgdv='rails g devise:views'
alias rgdu='rails g devise user'

#---- Generator Alias --------
alias rgc='rails g controller'
alias rgma='rails g mailer'
alias rgmi='rails g migration'
alias rgmo='rails g model'
alias rgr='rails g resource'
alias rgs='rails g scaffold'

#---- Rails Kill Server----------
alias search='lsof -wni tcp:3000'
alias destroy='kill -9 $1'

#---- Rails Routes Alias -------
alias rr='rails routes'
alias rrg='rails routes | grep $1'

#---- Webpacker Alias
alias rwi='rails webpacker:install:$1'
alias webds='bin/webpack-dev-server'

#-----------------
# Rails Functions
#-----------------

#------- Rails new, change into directory, and open code-insiders
#function rnapp() { rails new $1 && cd $1 && code-insiders .;}
function rrpapp() { rails new $1 -BT -d=postgresql --webpacker=react && cd $1 && rails db:create && nvim Gemfile ;}

#------- Rails new, change into directory, and open code-insiders (same window)
function rnappr() { rails new $1 && cd $1 && code-insiders . -r;}

#------- Rails generate scaffold and db:migrate
function rgsm() { rails g scaffold $1 && rails db:migrate; }

#------- Rails new, change into directory, and open code-insiders
function rntapp() { rails new $1 && cd $1 && guard init && bundle binstubs guard && rails g rspec:install && bundle binstubs rspec-core && cucumber --init && nvim;}
#Rails new, change into directory, install webpacker, and open code-insiders


#Rails 6 Javascript setup
function setjs() { mkdir app/javascript/scss app/javascript/js app/javascript/images && touch app/javascript/js/site.js app/javascript/scss/site.scss && mv app/javascript app/webpacker }


#------- Rails test function
function rnapp-() { rails new $1 --database=postgresql --skip-test --skip-action-cable --skip-active-storage --skip-turbolinks --skip-yarn && cd $1 && code-insiders .;}

#------- Devise Setup Functions
function deviseuserview(){ rails g devise:install && rails g devise:views && rails g devise User }
function deviseuser(){ rails g devise:install && rails g devise User }
function deviseview(){ rails g devise:install && rails g devise:views }

#-------------------------------
# Ruby/Rails Testing Functions
#-------------------------------

#------- Testing Initialization
function rinit() { rails g rspec:install && bundle binstubs rspec-core }
function ginit() { guard init && bundle binstubs guard }
function cinit() { cucumber --init }
function testing() { guard init && bundle binstubs guard && rails g rspec:install && bundle binstubs rspec-core && cucumber --init }

#     Terminal Functions
# ----------------------------

#------- make directory and change directory
function mkcd() { mkdir $1 && cd $1;}

#------- Create new folder for front end development (Code-Insiders editor)
function cifront() { mkcd $1 && touch index.html gulpfile.js index.js style.sass && mkdir img && npm init -y && git init && code-insiders . ; }

#------- Create new folder for front end development (NVIM editor)
function nvfront() { mkcd $1 && touch index.html gulpfile.js index.js style.sass && mkdir img && npm init -y && git init && nvim index.html ; }

function fe() { mkdir $1 && cd $1 && touch index.html style.sass && git init && ci .;}

# WSL
# ----------------------------
alias goto='wslview'

# VIM
# ----------------------------
alias nv='nvim'
#alias vim='$HOME/.config/nvim'
alias vimc='$HOME/.config/nvim/lua/smithwebdev/plugins/config'
alias vimp='$HOME/.config/nvim/lua/smithwebdev/plugins'
alias vims='$HOME/.config/nvim/lua/smithwebdev/start'

#VSCode Extensions dir
# ----------------------------
alias codex='mnt/c/Users/smith/.vscode/extensions'

alias ctag='ctags -R -f .gitignore/tags --exclude=.git --exclude=log'
#>>>>>>> nvim
alias explorer="explorer.exe ."
alias vivaldi="vivaldi.exe"

function zgi() {echo "sudo apt-get install $1" >> ~/Setup/linux.txt && sudo apt-get install $1}
function zi() {echo "sudo apt install $1" >> ~/Setup/linux.txt && sudo apt install $1}
function zu() {echo "sudo apt-get update" >> ~/Setup/linux.txt && sudo apt-get update}
function zr() {echo "sudo add-apt-repository $1" >> ~/Setup/linux.txt && sudo add-apt-repository} 

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PYENV_ROOT=$HOME/.pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

export VIMA="$HOME/.config/nvim/lua/smithwebdev/start/autocmds.lua"
export VIMC="$HOME/.config/nvim/lua/smithwebdev/plugins/config/init.lua"
export VIME="$HOME/.config/nvim/lua/smithwebdev/plugins/config"
export VIMI="$HOME/.config/nvim/init.lua"
export VIML="$HOME/.config/nvim/lua/smithwebdev/plugins/config/lsp/init.lua"
export VIMM="$HOME/.config/nvim/lua/smithwebdev/start/keymaps.lua"
export VIMP="$HOME/.config/nvim/lua/smithwebdev/plugins/init.lua"
export VIMS="$HOME/.config/nvim/lua/smithwebdev/start/settings.lua"
export VIMU="$HOME/.config/nvim/lua/smithwebdev/start/utils.lua"


#export TERM=xterm-256color-italic
