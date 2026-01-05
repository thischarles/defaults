#!/bin/zsh

# https://emmer.dev/blog/automate-your-macos-defaults/
# https://medium.com/@laclementine/dotfile-for-mac-efe082ad0d6a
# https://macos-defaults.com

# -g is Apple Global Domain

###################
# System Settings #
###################

# ---- Appearance ---- #
# Dark mode on
defaults write -g AppleInterfaceStyle -string "Dark"
# Show scroll bars > When scrolling
defaults write -g AppleShowScrollBars -string "WhenScrolling"

# ---- Desktop & Dock ---- #
# Automatically hide and show the Dock [on]
defaults write com.apple.dock autohide -bool true
# Magnification [Large]
defaults write com.apple.dock largesize -int 128
# Show suggested and recent apps in Dock [off]
defaults write com.apple.dock show-recents -bool false
# Window title bar double-click action > Minimize
defaults write -g AppleActionOnDoubleClick -string "Minimize"
# Tiled windows have margins [off]
defaults write com.apple.WindowManager EnableTiledWindowMargins -bool false
# Hold ⌥ key while dragging windows to tile [on]
defaults write com.apple.WindowManager EnableTilingOptionAccelerator -bool true

# ---- Trackpad ---- #
# Scroll & Zoom > Natural scrolling [off]
defaults write -g com.apple.swipescrolldirection -bool false

# ---- Sound ---- #
# Play feedback when volume is changed [on]
defaults write -g com.apple.sound.beep.feedback -bool true

# ---- Accessibility ---- #
# Flash the screen when an alert sound occurs [on]
defaults write -g com.apple.sound.beep.flash -bool true
# Zoom > Use scroll gesture with modifier key to zoom [on]
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
# Zoom > Modifier key for scroll gesture > ^ Control
defaults write com.apple.AppleMultitouchTrackpad HIDScrollZoomModifierMask -int 262144

# ---- Menu Bar ---- #
# Clock > Clock Options
  # Flash the time separators [on]
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true
  # Style > Digital
defaults write com.apple.menuextra.clock IsAnalog -bool false
  # Show AM/PM [on]
defaults write com.apple.menuextra.clock ShowAMPM -bool true
  # Show date [on]
defaults write com.apple.menuextra.clock Date -bool false
  # Show the day of the week [on]
defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true
  # Display the time with seconds [on]
defaults write com.apple.menuextra.clock ShowSeconds -bool true
# Siri [off]
defaults write com.apple.Siri StatusMenuVisible -bool false
# Sound > Always Show
defaults write com.apple.controlcenter "NSStatusItem VisibleCC Sound" -bool true

##########
# Finder #
##########

# View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true
# View > Show Status Bar
defaults write com.apple.finder ShowStatusBar -bool true

################################################
# Reset processes to have settings take effect #
################################################

killall cfprefsd
killall SystemUIServer
killall -HUP UniversalAccess
killall Finder
killall Dock
killall WindowManager
