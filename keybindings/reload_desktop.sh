pkill -9 vala-panel; sleep 1 && vala-panel &
pkill -9 xfce4-panel; sleep 1 && xfce4-panel &
#pkill -9 polybar; sleep 1 && fish -c 'polybar -c design/panel.cfg default' &
#pkill -9 conky; sleep 1 && fish -c 'for widget in ./design/widgets/*.conf; conky -c $widget &; end' &
