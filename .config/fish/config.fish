# Path to Oh My Fish install.
set fish_plugins brew osx

set -gx OMF_PATH "/Users/Yuuko/.local/share/omf"
set -gx PATH $PATH /usr/local/Cellar/dos2unix/7.3/bin /Applications/script /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin /Library/Frameworks/Python.framework/Versions/2.7/bin /Library/Frameworks/Python.framework/Versions/Current/bin /Applications/script /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin /Library/Frameworks/Python.framework/Versions/2.7/bin /Library/Frameworks/Python.framework/Versions/Current/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin /opt/X11/bin /usr/texbin /Applications/MATLAB_R2014b.app/bin/ /Applications/MATLAB_R2014b.app/bin/ /opt/local/bin /opt/local/sbin /opt/local/share/man /usr/local/cuda/bin export ~/anaconda2/bin
set -gx PATH /Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin $PATH
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8

set -gx ALL_PROXY 'socks5://127.0.0.1:1080'
set -gx LDFLAGS -L/usr/local/opt/curl/lib -L/usr/local/opt/openssl/lib $LDFLAGS
set -gx CPPFLAGS -I/usr/local/opt/curl/include -I/usr/local/opt/openssl/include $CPPFLAGS
#source /usr/local/amber14/amber.fsh
set -gx CUDA_HOME /usr/local/cuda

set -gx CUDA_INC_PATH $CUDA_HOME/include
set -gx CUDA_LIB_PATH $CUDA_HOME/lib

set -gx CUDA_INSTALL_PATH $CUDA_HOME

set -gx PATH $CUDA_HOME/bin $PATH
#set -gx PATH $CUDA_HOME/computeprof/bin $PATH

#set -gx LD_LIBRARY_PATH $CUDA_HOME/computeprof/bin $LD_LIBRARY_PATH
set -gx LD_LIBRARY_PATH $CUDA_HOME/lib $LD_LIBRARY_PATH
#set -gx LD_LIBRARY_PATH $CUDA_HOME/extras/CUPTI/lib $LD_LIBRARY_PATH
#set -gx MANPATH $CUDA_HOME/man $MANPATH

set -gx OPENCL_HOME $CUDA_HOME
set -gx OPENCL_INC_PATH $OPENCL_HOME/include
set -gx OPENCL_LIB_PATH $OPENCL_HOME/lib
set -gx LD_LIBRARY_PATH $OPENCL_LIB_PATH $LD_LIBRARY_PATH
#--------------------------------------------
set -gx LD_LIBRARY_PATH /opt/X11/include /opt/local/lib/gcc48/ $LD_LIBRARY_PATH
set -gx LIBRARY_PATH /opt/X11/include /opt/local/lib/gcc48/ $LIBRARY_PATH
set -gx DYLD_LIBRARY_PATH /usr/local/cuda/lib $DYLD_LIBRARY_PATH

alias matlab 'matlab -nodesktop'
alias em 'open -a Emacs'
#alias vi 'emacsclient -t'
alias me 'emacs'
alias ec 'emacsclient -c'
alias txt 'open -a TextEdit'
alias pwdc 'pwd | pbcopy'
alias gvim '/Applications/MacVim.app/Contents/MacOS/Vim -g';
set szak 'http://music.163.com/playlist?id=155129377'
set nagi 'http://music.163.com/playlist\?id\=33796324'
set you 'http://music.163.com/playlist\?id\=78894881'
set gal1 'http://music.163.com/playlist?id=112513428'
set gal2 'http://music.163.com/playlist?id=150032455'
set onna 'http://music.163.com/playlist?id=141036418'
alias play 'python /Applications/script/iScript-master/music.163.com.py -p'

[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/Yuuko/.config/omf"
function trashempty
    /bin/rm -rf ~/.Trash/*
end
function rm
    mv $argv ~/.Trash
end
function pwdc
    pwd | pbcopy
end
# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
