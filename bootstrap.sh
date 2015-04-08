echo -e "\n### Provisioning... ###\n\n"

# Install Ruby 2.1.4
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby=2.1.4

# Install OpenProject Community Edition
wget -qO - https://deb.packager.io/key | sudo apt-key add -
echo "deb https://deb.packager.io/gh/finnlabs/pkgr-openproject-community trusty stable" | sudo tee /etc/apt/sources.list.d/pkgr-openproject-community.list
apt-get update -y
apt-get install openproject-ce -y

echo -e "\n### Provisioned. ###\n\n"
