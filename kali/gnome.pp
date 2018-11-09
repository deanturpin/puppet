$_gnome = "/usr/bin/gsettings set"

exec { touchpad:
	command => "${_gnome} org.gnome.desktop.peripherals.touchpad tap-to-click true"
}

exec { idle-delay:
	command => "${_gnome} org.gnome.desktop.session idle-delay 3600"
}

exec { ambient-enabled:
	command => "${_gnome} org.gnome.settings-daemon.plugins.power ambient-enabled false"
}
