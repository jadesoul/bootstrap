sudo apt-get install vim
cd ~
BAK=vim_backup-`date`
mkdir "$BAK"
mv .vimrc "$BAK"
mv .vim "$BAK"
cd -
tar zxvf vim.tgz
mv .vimrc .vim ~

