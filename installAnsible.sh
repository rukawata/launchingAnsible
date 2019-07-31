apt update
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install -y ansible > /home/nancyc/install.log
mkdir /home/nancyc/git
yes | git clone git@github.com:Azure/sap-hana.git /home/nancyc/git
ansible-playbook /home/nancyc/git/testAnsible/test_playbook.yml --extra-vars "url_hdbserver=https://hana238791421.blob.core.windows.net/sapbits/SAPCAR_1211-80000935.EXE"
