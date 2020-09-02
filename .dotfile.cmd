git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
curl -Lks http://bit.do/cfg-init | /bin/bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config remote add origin git@github.com:freedragonlxl/dotfile.git
config add -u 表示添加编辑或者删除的文件，不包括新添加的文件
##fisrt
config push -u origin master
##then
config push

url: https://www.atlassian.com/git/tutorials/dotfiles
fzf extra cmd
$(brew --prefix)/opt/fzf/install

//pip 在线转移
pip freeze >dependency.txt
pip install -r dependency.txt
//pip 离线安装
pip download -r dependency.txt -d ./mylibs/
pip install --no-index --find-links=./mylibs/
https://blog.csdn.net/huashao0602/article/details/97617003

tmux 插件启东条件，手动
cd ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm

每次更新xcode，clang版本就会更新，会影响ycm_extra_conf.py文件的自动补全配置

git clone https://github.com/devcxm/iOS-Images-Extractor
cd iOS-Images-Extractor
git submodule update --init --recursive
open iOSImagesExtractor.xcworkspace

pod的问题：
pod某库时，如ReactiveObjC, 库里面有extobjc目录，形成framework之后，extobjc却消失；
这会影响ale检测以及Xcode跳转也出现问题。这时候我采用主动调整文件位置，以及全局替换PodsPoj文件相关内容
