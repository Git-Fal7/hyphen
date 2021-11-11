function settings_daemon --description 'Settings daemon'
    # Set GTK theme and background
    export GTK_THEME=(gsettings get org.gnome.desktop.interface gtk-theme | tail -c +2 | head -c -2)
    export GTK3_MODULES=(whereis -b libplotinus | awk '{print $2}')
    [ "$GTK3_MODULES" = "" ] && export GTK3_MODULES="/usr/lib/libplotinus.so" || true
    #fish -c "while true; sleep 1 && feh --bg-fill (gsettings get org.gnome.desktop.background picture-uri | tail -c +9 | head -c -2 || echo '/usr/share/unityx/design/images/unityx-background1.png'); end" &
    #feh --bg-fill (gsettings get org.gnome.desktop.background picture-uri | tail -c +9 | head -c -2 || echo '/usr/share/unityx/design/images/unityx-background1.png') &
    
    #launch nitro
    nitrogen --restore &
    
    #launch xfwm4
    xfwm4 &

    # Mkdir Desktop in the home directory
    mkdir ~/Desktop

    # Assign keybindings to rofi.
    #fish -c "cd ~/Desktop && python3 "(echo $PWD)"/keybindings/keybindings2.py" &
    
    # Add remaining keybindings.
    #fish keybindings/add.fish &

    # Launch panel.
    #sleep 1 && fish -c 'polybar -c design/panel.cfg default' &
    #polybar -c design/panel.cfg default &
    
    #removed for xfce4-panel + vala-panel-appmenu-xfce
    #vala-panel &
    
    #launch xfce-panel
    xfce4-panel &
    
    #launch nemo-desktop
    nemo-desktop &
    # Show widgets
    #sleep 2 && fish -c 'for widget in ./design/widgets/*.conf; conky -c $widget &; end' &

    # Run polkit authentication agent.
    /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
    /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

    # Execute autorun script, if it exists.
    fish -c '~/.config/unityx/autorun || true' &

    # Show the keyboard shortcuts dialog
    #zenity --list \
    #  --class='UnityX' \
    #  --title='Keyboard Shortcuts' \
    #  --text='A list of keyboard shortcuts can be found below.' \
    #  --column='Shortcut'   --column='Definition' \
    #    'Alt+W'             'Show open windows' \
    #    'Alt+A or Super+A'  'Show applications' \
    #    'Alt+X'             'Terminate session' \
    #    'Alt+S'             'Volume control.' &

    # Show all the tray icons
    sleep 1
    nm-applet &
    #blueman-applet &
    #pnmixer &
    #fish -c 'while true; timeout 5 pnmixer; end' &
    set lib_dir '/usr/lib/'(uname -i)'-linux-gnu'    
    $lib_dir/notify-osd || /usr/lib/notify-osd/notify-osd &
    plotinus &

    # Assign keybinding to log out.
    #python3 keybindings/keybindings.py '<Alt>x' 'exit' 'exit'
	
    #all keys in one script
    python3 keybindings/keybindings.py

    # Kill all background processes launched
    kill (jobs -p)
end
