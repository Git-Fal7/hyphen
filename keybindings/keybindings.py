import os, sys
import gi
import yaml
gi.require_version ('Gtk', '3.0')
gi.require_version ('Keybinder', '3.0')

from gi.repository import Gtk
from gi.repository import Keybinder

global map

def callback (keystr, user_data):
	os.system (map[keystr])
	if map[keystr] == 'exit': exit ()

if __name__ == '__main__':
	map = {}
	yaml_file = open('/usr/share/unityx/keybindings/kb.yml', 'r')
	yaml_content = yaml.load(yaml_file)
	print("key: value")
	Keybinder.init ()
	for key, value in yaml_content.items():
		print(f"{key}: {value}")
		bind = yaml_content[key]['key']
		action = yaml_content[key]['action']
		print(bind)
		print(action)
		keystr = bind
		map[bind] = action
		print(map)
		Keybinder.bind (keystr, callback, "Keystring %s (user data)" % keystr)
	Gtk.main ()
