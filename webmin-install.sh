sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

sudo curl https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh | sh

sudo apt-get update
sudo apt-get install webmin -y
