# Finder标题栏显示绝对路径
defaults write com.apple.finder _FXShowPosixPathInTitle -bool TRUE

# Finder中显示~/Library/目录
chflags nohidden ~/Library/

# 截图保存路径~/pictures/capture
defaults write com.apple.screencapture location ~/Pictures/capture

# Dock中每行展示6个，每列展示8个
defaults write com.apple.dock springboard-rows -int 6
defaults write com.apple.dock springboard-columns -int 8

# 系统输入法长按一个键以能够连续输入
defaults write -g ApplePressAndHoldEnabled -bool false

killall Finder
killall SystemUIServer
killall Dock

