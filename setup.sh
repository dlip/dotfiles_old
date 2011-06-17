#set up links to dot files
dotfiles=( 
  "bashrc" 
  "bash_profile" 
  "ssh/config" 
)

for f in "${dotfiles[@]}"
do
  if [ -f ~/.$f ]
  then
  rm ~/.$f
  fi
  
  ln -s ~/dotfiles/$f ~/.$f
done
