#!/bin/sh


# download codervim package
git clone https://github.com/codervim/codervim.git

mv codervim .codervim



# backup existing .vimrc
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.beforecodervim
elif [ -l ~/.vimrc ]; then
    ln -sv ~/.vimrc_beforecodervim ***
fi


# link .vimrc to codervim/.vimrc
ln -svf ~/.vimrc .codervim/.vimrc

echo "codervim configurating done. Enjoy!"

# There is no change back to previous VIM config command. Because I beleive 
# there is no need for it. This one 

