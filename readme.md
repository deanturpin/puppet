```bash
# Install Puppet and tools
apt install puppet puppet-module-puppetlabs-apt git make

# Clone this repo
git clone https://github.com/deanturpin/puppet /tmp/puppet

# Run Puppet client
cd /tmp/puppet
make
```

See [Puppet script](kali.pp) and [server configuration](server.md).
