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
