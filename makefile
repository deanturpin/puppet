all: kali.pp
	apt install puppet puppet-module-puppetlabs-apt
	puppet apply $<
