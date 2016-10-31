# Need to install wget & apt-transport-https for https
sudo sed -i s:/archive.ubuntu.com:/cn.archive.ubuntu.com:g /etc/apt/sources.list
# Fix bugs of dictionaries-common
sudo sh /usr/share/debconf/fix_db.pl
sudo dpkg-reconfigure dictionaries-common
# Install xfce and virtualbox additions
sudo apt-get update
sudo apt-get install -y lxde virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
  # Permit anyone to start the GUI
sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

sudo apt-get install -y wget  apt-transport-https
# Import the GPG key
wget -qO- https://apt.boundlessgeo.com/gpg.key | sudo apt-key add -

# Add the OpenGeo Suite repository
echo 'deb https://apt.boundlessgeo.com/suite/latest/ubuntu/ trusty main' | sudo tee --append /etc/apt/sources.list

# update and install opengeo
sudo apt-get update  && sudo apt-get install -y opengeo --force-yes


