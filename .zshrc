# Path to your oh-my-zsh installation.
export ZSH=/Users/Yuuko/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="af-magic"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git colorize history pass macports z sudo extract cp textmate ruby autojump osx mvn gradle)

# User configuration

export PATH="/usr/local/Cellar/dos2unix/7.3/bin:/Applications/script:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/Current/bin:/Applications/script:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/Current/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/opt/X11/bin:/usr/texbin:/Applications/MATLAB_R2014b.app/bin/:/Applications/MATLAB_R2014b.app/bin/:/opt/local/bin:/opt/local/sbin:/opt/local/share/man:/usr/local/cuda/bin"
# export MANPATH="/usr/local/man:$MANPATH"
source /usr/local/amber14/amber.sh
#--------------------------------------------
export CUDA_HOME=/usr/local/cuda

export CUDA_INC_PATH=${CUDA_HOME}/include
export CUDA_LIB_PATH=${CUDA_HOME}/lib

export CUDA_INSTALL_PATH=${CUDA_HOME}

export PATH=${CUDA_HOME}/bin:$PATH
#export PATH=${CUDA_HOME}/computeprof/bin:$PATH

#export LD_LIBRARY_PATH=${CUDA_HOME}/computeprof/bin:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${CUDA_HOME}/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=${CUDA_HOME}/extras/CUPTI/lib:$LD_LIBRARY_PATH
#export MANPATH=${CUDA_HOME}/man:$MANPATH

export OPENCL_HOME=${CUDA_HOME}
export OPENCL_INC_PATH=${OPENCL_HOME}/include
export OPENCL_LIB_PATH=${OPENCL_HOME}/lib
export LD_LIBRARY_PATH=${OPENCL_LIB_PATH}:$LD_LIBRARY_PATH
#--------------------------------------------
export LD_LIBRARY_PATH=/opt/X11/include:/opt/local/lib/gcc48/:$LD_LIBRARY_PATH
export LIBRARY_PATH=/opt/X11/include:/opt/local/lib/gcc48/:$LIBRARY_PATH
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
export AMBERHOME=/usr/local/amber14

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias matlab='matlab -nodesktop';
alias em='open -a Emacs'
alias me='emacs'
alias txt='open -a TextEdit'
alias pwdc='pwd | pbcopy'
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g';
#alias -s sh=vi
rm(){
    mv "$@" ~/.Trash
}
alias -s tex=me
alias -s m=vi
alias -s R=vi
alias -s cpp=vi
alias -s dat=vi
alias -s txt=vi
alias -s org=me
alias -s eps=open -a Preview
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
szak=http://music.163.com/\#/my/m/music/playlist\?id\=155129377
nagi=http://music.163.com/\#/my/m/music/playlist\?id\=33796324
you=http://music.163.com/\#/my/m/music/playlist\?id\=78894881
gal1=http://music.163.com/#/my/m/music/playlist?id=112513428
gal2=http://music.163.com/#/my/m/music/playlist?id=150032455
onna=http://music.163.com/#/my/m/music/playlist?id=141036418

alias play='python /Applications/script/iScript-master/music.163.com.py -p'
#PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}>'
#PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
#PROMPT='%{$fg_bold[red]%}Sunkworld:%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}'
