#disk usage in human readable sorted by size
du -s /* | sort -n | cut -f 2- | while read a; do du -sh "$a"; done
