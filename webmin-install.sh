if [ "$(id -u)" -ne 0 ]; then
    echo "${RED}Error:${NORMAL} \`setup-repos.sh\` script must be run as root!" >&2
    exit 1
fi

sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

sudo curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
sudo sh setup-repos.sh

sudo apt-get update
sudo apt-get install webmin -y

rm setup-repos.sh
