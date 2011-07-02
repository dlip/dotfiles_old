#set up links to dot files
dotfiles=( 
  "vim" 
  "vimrc" 
  "bashrc" 
  "bash_profile" 
  "ssh/config" 
  "xmonad" 
  "Xmodmap" 
  "gitconfig" 
  "inputrc" 
)

for f in "${dotfiles[@]}"
do
  if [ -f ~/.$f ]
  then
  rm ~/.$f
  fi
  
  ln -s ~/dotfiles/$f ~/.$f
done

#set up submodules
git submodule init
git submodule update
