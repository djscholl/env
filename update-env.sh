mv ~/.bashrc ~/.bashrc.bak
cp .bashrc ~/

mv ~/.vimrc ~/.vimrc.bak
cp .vimrc ~/

SUBLIME_DIR="~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/"
if [[ -d "SUBLIME_DIR" ]] ; then
    mv $SUBLIME_DIR/Preferences.sublime-settings $SUBLIME_DIR/Preferences.sublime-settings.bak
    cp Preferences.sublime-settings $SUBLIME_DIR/
fi
