#!/usr/bin/fish

export action=(zenity --list --title 'Session' --class 'UnityX' --text 'You are '(getent passwd | grep "$USER" | cut -d":" -f5 | cut -d"," -f1)'. Select an option.' --column Option 'Log out' 'Suspend' 'Shutdown' 'Reboot')

switch "$action"
	case 'Log out'
		xdotool key alt+x
	case Suspend
		systemctl suspend
	case Shutdown
		poweroff
	case Reboot
		reboot
end
