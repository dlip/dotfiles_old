#disk usage in human readable sorted by size
du -s $1 | sort -n | cut -f 2- | while read a; do du -sh "$a"; done
