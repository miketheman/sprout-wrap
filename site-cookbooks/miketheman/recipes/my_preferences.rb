# Set clock style
# {  DateFormat = "EEE MMM d  H:mm";
#   FlashDateSeparators = :false;
#   IsAnalog = :false;
# }
osx_defaults "set my clock preference" do
  domain "com.apple.menuextra.clock.plist"
  key "DateFormat"
  string "EEE MMM d  H:mm"
end

# MenuMeters settings.
# Overwrites the default recipe's file, which is guarded to execute once only
osx_defaults "set CPU display as Average over multi Procs" do
  domain "com.ragingmenace.MenuMeters.plist"
  key "CPUAverageMultiProcs"
  boolean true
  notifies :run, 'execute[Restart SystemUIServer]', :delayed
end
osx_defaults "set network display as Arrows & Graph" do
  domain "com.ragingmenace.MenuMeters.plist"
  key "NetDisplayMode"
  integer 5
  notifies :run, 'execute[Restart SystemUIServer]', :delayed
end

# Ask for password 1 minute after screensaver starts
osx_defaults "set screensaver" do
  domain "com.apple.screensaver"
  key "askForPasswordDelay"
  integer 60
end
