echo -e "\n### Provisioning... ###\n\n"
wget -qO - https://deb.packager.io/key | sudo apt-key add -
echo "deb https://deb.packager.io/gh/finnlabs/pkgr-openproject-community trusty stable" | sudo tee /etc/apt/sources.list.d/pkgr-openproject-community.list
apt-get update -y
apt-get install openproject-ce -y

echo -e "\n### Provisioned. ###\n\n"
