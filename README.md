# Vagrant for Ubuntu Trusty

### Provision run as root
1. Update system   

    $ apt-get update

2. Set local timezone

    $ echo "Asia/Jakarta" | tee /etc/timezone
    $ dpkg-reconfigure --frontend noninteractive tzdata

3. Install git

    $ apt-get install git -y

4. Install latest stable release of NodeJs

    $ mkdir /home/vagrant/provision
    $ git clone https://github.com/tj/n.git /home/vagrant/provision/n
    $ cd /home/vagrant/provision/n/
    $ make install
    $ n stable