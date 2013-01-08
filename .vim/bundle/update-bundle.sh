for D in `find . -maxdepth 1 -type d`
do
  (cd $D && echo $D && git checkout master && git pull)
done
