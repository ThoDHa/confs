```sh
git clone git@github.com:ThoDHa/confs.git
sudo apt-get install tmux
cp confs/.tmux.conf ~/.tmux.conf
cp confs/.virmrc ~/.vimrc
 grep -q "set -o vi" ~/.bashrc; [ $? -eq 0 ] && echo "Already contains 'set -o vi'" || echo "set -o vi" >> ~/.bashrc
```
