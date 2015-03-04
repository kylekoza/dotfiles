Hot corner - bottom left screensaver
Automatically hide and show the dock
24-hour time
Turn on firewall
	Enable stealth mode
Require password 5 seconds
Filevault
Do Not Disturb
Power adapter -> prevent computer from sleeping
Trackpad
	Tap to click
	App Expose
iCloud
	Drive
	Mail
	Contacts
	Calendar
	Reminders
	Safari
	Notes
Show Bluetooth in menu bar
Guest user disabled
Install app updates
Install OS X updates
Show date
Mouse
	Secondary Click
	Swipe between pages
Add more desktops

—————————
Change display preferences for monitors

—————————


Desktop
	Sort by - Snap to grid

Finder
	Show - everything
	Sidebar
		kylekoza
		Kyle’s MacBook Pro

Change size of dock

Update all

App Store
	Apple Remote Desktop
	Evernote
	Mactracker
	1Password
	Xcode
	Patterns
	Microsoft Remote Desktop
	
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
brew doctor

brew install caskroom/cask/brew-cask
brew install wireshark --with-qt
brew install mtr python3 nmap wget git cmake
brew install macvim --override-system-vim

brew cask install
	alfred
	citric-receiver
	dropbox
	gpgtools
	omnigraffle
	omnifocus
	spotify
	vmware-fusion
	little-snitch

chsh -s $(which zsh)

cd ~/
git init
git submodule add git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


vim +PluginInstall +qall

cd ~/.vim/bundle/youcompleteme
./install.sh --clang-completer

remove all dock icons
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer_tile";}’

add Application to Dock
change Downloads to display as folder
change Application to display as folder

Install Adblock Plus

———————
Application setup

Dropbox
	Share screenshots
	Disable camera uploads
	Disable LAN sync
Citrix
	Don’t show receiver in menu bar 

1Password
	Enable watchtower

Safari
	Do not open “safe” files
	New windows open with empty page
	New tabs open with empty page
	Remove history after two weeks
	Disable all autofill
	Ask websites not to track me
	Show develop menu

Mail
	Exchange - do not automatically download attachments
	Viewing
		Show To/Cc label
		Display unread messages with bold font
		Do not load remote content
	Mark addresses not ending in gatech.edu
	Send new messages from
	Use the same message format as the original
	Assign signatures to exchange


