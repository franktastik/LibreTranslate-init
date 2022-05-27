sudo yum update
sudo yum upgrade -y
sudo yum install -y vim git

# Install Python
sudo yum install -y python3 python3-virtualenv python-is-python3 python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools

# Install PyICU dependencies
# https://community.libretranslate.com/t/pyicu-fails-to-install-on-ubuntu-20-04/23
sudo yum install -y libicu-dev python3-icu pkg-config

# Install Nginx
sudo yum install -y nginx

# Download LibreTranslate source
git clone https://github.com/franktastik/LibreTranslate-init.git ~/LibreTranslate

# Setup virtualenv
virtualenv ~/LibreTranslate/env

# Install gunicorn
~/LibreTranslate/env/bin/pip install gunicorn

# Install and run LibreTranslate on port 5000
~/LibreTranslate/env/bin/pip install -e ~/LibreTranslate/ --no-cache-dir
~/LibreTranslate/env/bin/libretranslate

