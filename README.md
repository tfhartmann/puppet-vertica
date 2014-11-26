puppet
======

test puppet repo

puppet module install --target-dir /root/modules zack-r10k
puppet apply --modulepath /root/modules /vagrant/install.pp --verbose
