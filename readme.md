```bash
# Install Puppet and tools
apt install puppet puppet-module-puppetlabs-apt git make

# Clone this repo
git clone https://github.com/deanturpin/puppet /tmp/puppet

# Run Puppet client
cd /tmp/puppet
puppet apply kali
# puppet apply ubuntu
```

See [server configuration](doc/server.md).
