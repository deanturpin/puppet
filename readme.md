Copy and paste this into your terminal.

```bash
# Install Puppet and tools
apt install puppet puppet-module-puppetlabs-apt git make

# Clone this repo
git clone https://github.com/deanturpin/puppet /tmp/puppet

# Run Puppet agent (pass the manifest dir as an arguement)
cd /tmp/puppet
puppet apply kali # ubuntu

```
