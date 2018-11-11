package { vim: }

exec { spotify:
	command => "/usr/bin/snap install spotify || true"
}

exec { upgrade:
	command => "/usr/bin/apt upgrade || true"
}

exec { full-upgrade:
	command => "/usr/bin/apt full-upgrade || true"
}
