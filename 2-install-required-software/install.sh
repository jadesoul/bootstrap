#apt-get
sudo apt-get install `cat apt-get-install.list | grep -v '#'`

#pip install
sudo pip install `cat pip-install.list | grep -v '#'`

#git software
mkdir ~/git-projects
cd ~/git-projects
git clone git://github.com/jadesoul/libjade.git
cd libjade
sudo python setup.py install
