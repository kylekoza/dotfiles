softwareupdate -ia
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew doctor
cd ~
git init .
git remote add -t \* -f origin https://www.github.com/kylekoza/dotfiles
git checkout master
git branch --set-upstream-to=origin/master master
git pull origin master
git remote set-url origin git@github.com:kylekoza/dotfiles.git

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

brew install mas
mas install 497799835 # Install Xcode
sudo /Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -license accept
for pkg in /Applications/Xcode.app/Contents/Resources/Packages/*.pkg; do sudo installer -pkg "$pkg" -target /; done
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

export HOMEBREW_NO_ANALYTICS=1

brew bundle install

vim +PluginInstall +qall
brew link cmake
cd ~/.vim/bundle/youcompleteme
python install.py
cd ~

# Global Python
#pip2 install python-ldap --global-option=build_ext --global-option="-I$(xcrun --show-sdk-path)/usr/include/sasl"
#pip2 install -r requirements.txt
#pip install python-ldap --global-option=build_ext --global-option="-I$(xcrun --show-sdk-path)/usr/include/sasl"
#pip install -r requirements.txt
