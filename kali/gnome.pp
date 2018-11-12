$_set = "gsettings set"
$_get = "gsettings get"

$_touchpad = "org.gnome.desktop.peripherals.touchpad tap-to-click"
exec { touchpad:
  command => "${_set} ${_touchpad} true",
  unless => "test \$(${_get} ${_touchpad}) = true",
  path => "/usr/bin/"
}

$_idle = "org.gnome.desktop.session idle-delay"
exec { idle-delay:
  command => "${_set} ${_idle} 3600",
  onlyif => "test \$(${_get} ${_idle}) -ne 3600",
  path => "/usr/bin/"
}

$_ambient = "org.gnome.settings-daemon.plugins.power ambient-enabled"
exec { ambient-enabled:
  command => "${_set} ${_ambient} false",
  onlyif => "test \$(${_get} ${_ambient}) -ne false",
  path => "/usr/bin/"
}
