#!/bin/sh


# download codervim package
git clone https://github.com/codervim/codervim.git

mv codervim .codervim



# backup existing .vimrc
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
elif [ -L ~/.vimrc ]; then
    mv .vimrc .vimrc.bak
else
    ln -sv .codervim/vimrc .vimrc
fi


echo "codervim configurating done. Enjoy!"

# There is no change back to previous VIM config command. Because I beleive 
# there is no need for it. This one 

