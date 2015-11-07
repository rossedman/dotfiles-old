# Setup a machine for Sublime Text 3
set -x

# symlink settings in
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3/Packages
mv "$sublime_dir/User" "$sublime_dir/User.backup"
ln -s "$ZSHDOT/sublime/User" "$sublime_dir"

# link sublime command line
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime