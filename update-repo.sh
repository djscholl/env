cp ~/.bashrc .
cp ~/.vimrc .


SUBLIME_DIR="~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/"
if [[ -d "$SUBLIME_DIR" ]] ; then
    cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings .
fi
