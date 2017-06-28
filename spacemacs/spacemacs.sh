#!/bin/bash
/bin/rm -rf ~/.emacs.d ~/.spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
CUR_DIR=`pwd`
cd ~/.emacs.d
cp ${CUR_DIR}/.spacemacs ~
sed -i '' "s/'meta/'superr/g" layers/+os/osx/keybindings.el
sed -i '' "s/'super/'meta/g" layers/+os/osx/keybindings.el
sed -i '' "s/'metar/'super/g" layers/+os/osx/keybindings.el
cd private
mkdir personal;cp ../core/templates/packages.el.template personal/packages.el
sed -i '' $'s/Code:/Code:\
  (global-set-key (kbd "M-n")\
                (lambda () (interactive) (next-line 5)))\
(global-set-key (kbd "M-p")\
                (lambda () (interactive) (previous-line 5)))\
(global-set-key [f8]  \'neotree-toggle)/g' personal/packages.el
cd ..





