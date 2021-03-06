#!/bin/sh

if [ -d ~/.codervim ]; then
    rm -rf .codervim
    echo "Romved old codervim"
else
    echo "No codervim before"
fi

# download codervim package
git clone https://github.com/codervim/codervim.git

mv codervim .codervim

# backup existing .vimrc
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    echo "backup old .vimrc to .vimrc.bak"
elif [ -L ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
        echo "backup old .vimrc symbol link to .vimrc.bak"
fi

ln -sv .codervim/vimrc .vimrc

echo "codervim configurating done. Enjoy!"

# There is no change back to previous VIM config command. Because I beleive 
# there is no need for it. This one 

