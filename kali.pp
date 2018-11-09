# APT
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

# Gnome
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

# Bash
file { "/root/.bash_aliases":
	source => "https://raw.githubusercontent.com/deanturpin/config/master/.bash_aliases"
}

# Git
$_githooks = "/root/githooks"
file { $_githooks:
	ensure => directory
}

-> file { "${_githooks}/pre-commit":
	source => "https://raw.githubusercontent.com/deanturpin/githooks/master/pre-commit"
}

-> exec { githook-install:
	command => "/usr/bin/git config --global core.hooksPath ${_githooks} || true"
}
