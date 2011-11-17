## .bash_bindings: source this file from your .bashrc or .bash_profile
#
# For those who want to use Vi bindings in bash, this corrects a
# few annoyances:
#
# 1) up and down arrows retrieve history lines even in insert mode
# 2) left and right arrows work in insert mode
# 3) Ctrl-A and Ctrl-E work how you expect if you have had to
#    live in Emacs mode in the past.
# 4) So does Ctrl-D.
# 5) And Ctrl-L.

## Command-mode bindings
# Ctrl-A or Home: insert at line beginning like in emacs mode
 bind -m vi-command 'S: vi-insert-beg'
# Ctrl-E or End: append at line end like in emacs mode
 bind -m vi-command 'T: vi-append-eol'
# to switch to emacs editing mode
 bind -m vi-command '"ZZ": emacs-editing-mode'

#colemak
 bind -m vi-command '"n": backward-char'
 bind -m vi-command '"i": forward-char'
 bind -m vi-command '"u": previous-history'
 bind -m vi-command '"e": next-history'

 bind -m vi-command 't: vi-append-mode'
 bind -m vi-command 's: vi-insertion-mode'

 bind -m vi-command 'l: vi-bword'
 bind -m vi-command 'y: vi-fword'

 bind -m vi-command '"dl": "db"'
 bind -m vi-command '"dy": "dW"'

 #add ctrl c as escape
 bind -m vi-insert '"\C-c": "\C-["'
 stty intr ^X

## Insert-mode bindings
# up arrow or PgUp: append to previous history line
# bind -m vi-insert '"\M-[A": ""'
# bind -m vi-insert '"\M-[5~": ""'
# bind -m vi-insert 'Control-p: previous-history'
# dn arrow or PgDn: append to next history line
# bind -m vi-insert '"\M-[B": ""'
# bind -m vi-insert '"\M-[6~": ""'
# bind -m vi-insert 'Control-n: next-history'
# Ctrl-A: insert at line start like in emacs mode
 bind -m vi-insert 'Control-u: previous-history'
 bind -m vi-insert 'Control-n: backward-kill-word'
 bind -m vi-insert 'Control-e: next-history'
 bind -m vi-insert 'Control-s: beginning-of-line'
# Ctrl-E: append at line end like in emacs mode
 bind -m vi-insert 'Control-t: end-of-line'
# Ctrl-D: delete character
 bind -m vi-insert 'Control-d: delete-char'
# Ctrl-L: clear screen
 bind -m vi-insert 'Control-l: clear-screen'

## Emacs bindings
# Meta-V: go back to vi editing
 bind -m emacs '"\ev": vi-editing-mode'

## Specify vi editing mode
 set -o vi
