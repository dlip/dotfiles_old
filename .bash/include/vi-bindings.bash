#Colemak vi bash bindings
set -o vi

# Q

# W

# F

# P

# G

# ----------------------------------------------

# A

# R

# S
bind -m vi-command 'S: vi-insert-beg'
bind -m vi-command 's: vi-insertion-mode'
bind -m vi-insert 'C-s: beginning-of-line'

# T
bind -m vi-command 'T: vi-append-eol'
bind -m vi-command 't: vi-append-mode'
bind -m vi-insert 'C-t: end-of-line'

# D
bind -m vi-command '"dl": "db"'
bind -m vi-command '"dy": "dW"'

# ----------------------------------------------

# Z

# X

# C
#add ctrl c as escape
bind -m vi-insert '"\C-c": "\C-["'
stty intr ^X

# V

# B

# ----------------------------------------------
# ----------------------------------------------

# J

# L
bind -m vi-command 'l: vi-bword'
bind -m vi-insert 'C-l: clear-screen'

# U
bind -m vi-command 'u: previous-history'

# Y
bind -m vi-command 'y: vi-fword'

# ----------------------------------------------

# H
bind -m vi-insert 'C-h: backward-kill-word'

# N
bind -m vi-command 'n: backward-char'
bind -m vi-command 'C-n: previous-history'
#bind -m vi-insert 'C-n: previous-history'

# E
bind -m vi-command 'e: next-history'

# I
bind -m vi-command 'i: forward-char'
#C-i generates a tab so it overrides autocomplete
#bind -m vi-command 'C-i: next-history'
#bind -m vi-insert 'C-i: next-history'

# O

# '

# ----------------------------------------------

# K

# M

# ,

# .

# /

