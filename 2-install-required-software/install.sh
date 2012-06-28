#apt-get
sudo apt-get install `cat apt-get-install.list`

#pip install
sudo pip install `cat pip-install.list`

#git software
mkdir ~/git-projects
cd ~/git-projects
git clone https://github.com/jadesoul/libjade.git
cd libjade
sudo python setup.py install
