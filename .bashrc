if [ "$TERM" != "dumb" ]
then
  . ~/.bash/colors

  for file in ~/.bash/include/*.bash; do
      source "$file"
  done

  . ~/.bash/env
  . ~/.bash/config
  . ~/.bash/aliases

  lesskey
fi
