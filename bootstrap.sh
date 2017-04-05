echo 0 > /proc/sys/vm/swappiness
echo '' >> /etc/sysctl.conf
echo '#Set swappiness to 0 to avoid swapping' >> /etc/sysctl.conf
echo 'vm.swappiness = 0' >> /etc/sysctl.conf
systemctl stop firewalld
echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag
yum install wget -y

# Download version of couch base
wget https://packages.couchbase.com/releases/4.5.0/couchbase-server-community-4.5.0-centos7.x86_64.rpm

# Install couchbase
rpm --install couchbase-server-community-4.5.0-centos7.x86_64.rpm

# insert path int bas_profile line 10
echo 'PATH=$PATH:$HOME/bin:/opt/couchbase/bin' >> ~/.bash_profile
echo 'PATH=$PATH:$HOME/bin:/opt/couchbase/bin' >> /home/vagrant/.bash_profile
