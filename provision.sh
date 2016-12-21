# Need to install wget & apt-transport-https for https
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

# install QGIS
sudo apt-get install qgis -y --force-yes

# install GeoPackage extension of GeoServer

sudo apt-get install geoserver-geopackage -y --force-yes

# Setting a password to 'opengeo' for the postgres user

sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password 'opengeo';"

# Installing Boundless SDK

sudo apt-get install opengeo-weapp-sdk -y --force-yes

# Installing midori browser

sudo apt-get install midori -y --force-yes
