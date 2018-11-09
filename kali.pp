# Configure Gnome
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

# APT packages
include apt
package { vim: }
package { inotify-tools: }
package { ffmpeg: }
package { curl: }
package { "clang++-6.0": }
package { "g++-8": }
package { git: }
package { make: }
package { clang-format: }
package { pandoc: }
package { libreoffice: }
package { graphviz: }
package { fonts-indic: }
package { sloccount: }
package { iputils-tracepath: }
package { ipcalc: }

