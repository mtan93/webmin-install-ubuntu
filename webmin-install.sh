sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
sh setup-repos.sh

sudo apt-get update
sudo apt-get install webmin -y
