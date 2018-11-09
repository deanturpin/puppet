# Server
```
apt install puppetserver
apt update
$ puppet resource package puppetmaster ensure=latest
Warning: Setting cadir is deprecated. 
   (location: /usr/lib/ruby/vendor_ruby/puppet/settings.rb:1169:in `issue_deprecation_warning')
package { 'puppetmaster':
  ensure => '5.5.6-1',
}

/etc/puppet/puppet.conf
```
[main]
ssldir = /var/lib/puppet/ssl

[master]
vardir = /var/lib/puppet
cadir  = /var/lib/puppet/ssl/ca
dns_alt_names = puppet
```

## Manifests

```
mkdir -p /etc/puppet/modules/nginx/manifests
```

vim /etc/puppet/modules/nginx/manifests/init.pp
```
class nginx {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure  => true,
    enable  => true,
    require => Package['nginx'],
  }
}
```
```
mkdir -p /etc/puppet/manifests/
vim /etc/puppet/manifests/site.pp
```
```
node 'node-01.computingforgeeks.com' {
   include nginx
}
```

Check the server is running
```bash
ss | grep 443
```

# Client

Add server hostname to /etc/puppet/puppet.conf (in the main section)
```conf
certname = node-01
server = localhost
```

```
puppet cert list
puppet cert sign --all
puppet agent --test
```

# References
- https://puppet.com/docs/puppet/3.8/post_install.html
