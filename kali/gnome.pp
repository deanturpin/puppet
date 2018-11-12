$_gnome = "/usr/bin/gsettings"
$_set = "${_gnome} set"
$_get = "${_gnome} get"

$_touchpad = "org.gnome.desktop.peripherals.touchpad tap-to-click"
exec { touchpad:
  command => "${_set} ${_touchpad} true",
  unless => "/usr/bin/test \$(${_get} ${_touchpad}) = true"
}

$_idle = "org.gnome.desktop.session idle-delay"
exec { idle-delay:
  command => "${_set} ${_idle} 3600",
  onlyif => "/usr/bin/test \$(${_get} ${_idle}) -ne 3600"
}

$_ambient = "org.gnome.settings-daemon.plugins.power ambient-enabled"
exec { ambient-enabled:
  command => "${_set} ${_ambient} false",
  onlyif => "/usr/bin/test \$(${_get} ${_ambient}) -ne false"
}
