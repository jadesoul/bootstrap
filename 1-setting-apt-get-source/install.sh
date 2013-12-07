SYSTEM=ubuntu-11.10
SOURCE=163
NAME=sources.list
sudo mv /etc/apt/$NAME /etc/apt/$NAME.backup
sudo cp $SYSTEM/$NAME.$SOURCE /etc/apt/$NAME
sudo apt-get update
