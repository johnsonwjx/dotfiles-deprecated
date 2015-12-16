# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow osx brew npm gem node pip python sublime bower tmux ant)

# User configuration
export JAVA_HOME=`/usr/libexec/java_home`
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mvim ~/.zshrc"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:.jenv/bin:$PATH"
export CVSROOT=":pserver:wujiaxiong@38.19.66.19:/v6cvs"
eval "$(jenv init -)"
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=st   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=st     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=st       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=st
alias -s c=st
alias -s java=st
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias v='f -e atom' # quick opening files with vim

alias yfweb='jenv exec sh ~/V6/tomcat6/bin/catalina.sh run'
alias yfserver='cd ~/V6/output/server/ && jenv exec sh V6Server.sh ; cd - > /dev/null'
alias yfclient='cd ~/V6/output/client/ && sh V6EnterpriseManager.sh ; cd - > /dev/null'
alias yfwork='cd ~/V6/output/tools/V6\ 2008业务设计器/ && sh workpuformclient2.sh ; cd - > /dev/null'
alias yfform='cd ~/V6/output/tools/V6\ 2008表单设计器/ && sh yfformdesign.sh ; cd - > /dev/null'
alias yfquery='cd ~/V6/output/tools/查询分析器3.0/ && sh run.sh >> logs/app.log &; cd - > /dev/null'
alias yfant="~/V6/src/web/newdesigner/yfui/tools/ant/bin/ant"

alias yfservertest='nohup sh ~/V6/output/tools/servertest/MsgFrame.sh >> ~/V6/output/tools/servertest/servertest.log &'

alias yfupdate='cd ~/V6/yfupdatetools && nohup sh run.sh >> log.log &; cd - > /dev/null'

alias yfweb3='jenv exec sh ~/v6backend/tomcat7/bin/catalina.sh run'
alias yfserver3='cd ~/V63.0/output/server/ && jenv exec sh V6Server.sh ; cd - > /dev/null'

eval "$(rbenv init -)"
eval "$(fasd --init auto)"
eval "$(fasd --init posix-alias zsh-hook)"
