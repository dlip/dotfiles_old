. ~/.bash/env
. ~/.bash/config
. ~/.bash/aliases
for file in ~/.bash/include/*.bash; do
    source "$file"
done
