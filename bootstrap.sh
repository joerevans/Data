echo 0 > /proc/sys/vm/swappiness
echo '' >> /etc/sysctl.conf
echo '#Set swappiness to 0 to avoid swapping' >> /etc/sysctl.conf
echo 'vm.swappiness = 0' >> /etc/sysctl.conf
systemctl stop firewalld
echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag
yum install wget 
rpm --install /vagrant/couchbase-server-community-4.5.0-centos7.x86_64.rpm
