$_githooks = "/root/githooks"
$_url = "https://raw.githubusercontent.com/deanturpin/githooks/master/pre-commit"

file { $_githooks:
	ensure => directory
}

-> file { "${_githooks}/pre-commit":
	source => $_url
}

-> exec { githook-install:
	command => "/usr/bin/git config --global core.hooksPath ${_githooks} || true"
}
