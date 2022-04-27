```sh
mkdir ~/opt
cd ~/opt/
git clone https://github.com/ThoDHa/confs.git
sudo apt-get install -y tmux
cp ~/opt/confs/.tmux.conf ~/.
cp ~/opt/confs/.vimrc ~/.
cp ~/opt/confs/.bash_profile ~/.
 grep -q "set -o vi" ~/.bashrc; [ $? -eq 0 ] && echo "Already contains 'set -o vi'" || echo "set -o vi" >> ~/.bashrc
```
