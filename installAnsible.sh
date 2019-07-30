sudo su -
apt update
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install -y ansible > /home/nancyc/install.log
mkdir /home/nancyc/git
yes | git clone git@github.com:Azure/sap-hana.git /home/nancyc/git
