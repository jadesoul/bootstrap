#for mac x86
url=https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh

#for mac m1
#url=https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh

#for linux
#url=https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

#for win
#url=https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe

file=$(basename $url)
test -f $file || wget $url -O $file
sh $file -b -f -u -p $HOME/tools/miniconda3
