# Set clock style
# {  DateFormat = "EEE MMM d  H:mm";
#   FlashDateSeparators = :false;
#   IsAnalog = :false;
# }
# This will fail first time around as it needs to be generated externally
osx_defaults "set my clock preference" do
  domain "com.apple.menuextra.clock.plist"
  key "DateFormat"
  string "'EEE MMM d  H:mm'"
end

# MenuMeters settings.
# Overwrites the default recipe's file, which is guarded to execute once only
osx_defaults "set CPU display as Average over multi Procs" do
  domain "com.ragingmenace.MenuMeters.plist"
  key "CPUAverageMultiProcs"
  boolean true
end
osx_defaults "set network display as Arrows & Graph" do
  domain "com.ragingmenace.MenuMeters.plist"
  key "NetDisplayMode"
  integer 5
end

# Ask for password 1 minute after screensaver starts
osx_defaults "set screensaver" do
  domain "com.apple.screensaver"
  key "askForPasswordDelay"
  integer 60
end

osx_defaults "allow keyboard to navigate dialogs" do
  domain "/Users/#{node['current_user']}/Library/Preferences/.GlobalPreferences"
  key "AppleKeyboardUIMode"
  integer 2
end
