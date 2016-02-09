### SUPER PROVISIONER MARIADB-GIT-NODEJS
export DEBIAN_FRONTEND=noninteractive

sudo apt-get install -y wget curl git debconf-utils

debconf-set-selections <<< 'mariadb-server-10.1 mysql-server/root_password password pass'
debconf-set-selections <<< 'mariadb-server-10.1 mysql-server/root_password_again password pass'

sudo apt-get install -y software-properties-common
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
sudo add-apt-repository 'deb [arch=amd64,i386] http://mirror.edatel.net.co/mariadb/repo/10.1/debian jessie main'

sudo apt-get update
sudo apt-get install -y mariadb-server

curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs
