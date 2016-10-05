# Display Configuration
xrandr --output DP-1 --primary --mode 2560x1440 --pos 0x0 --output DVI-I-1 --mode 1920x1200 --pos 2560x120

# Load Color Profiles
xcalib -display :0.0 ~/.config/icc_profiles/dell_2407.icm

# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Start Compton
compton --config ~/.config/compton.conf -b

# Set the background
~/.scripts/fehbg.sh

# Start I3
#exec i3
exec dbus-launch i3
