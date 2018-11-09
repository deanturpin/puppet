all:
	apt install puppet puppet-module-puppetlabs-apt
	puppet apply manifests
