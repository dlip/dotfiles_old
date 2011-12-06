# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=/home/dlipscombe/.rvm/gems/ruby-1.8.7-p352/bin:/home/dlipscombe/.rvm/gems/ruby-1.8.7-p352@global/bin:/home/dlipscombe/.rvm/rubies/ruby-1.8.7-p352/bin:/home/dlipscombe/.rvm/bin:/home/dlipscombe/bin:/home/dlipscombe/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games



#Colemak vi bash bindings
bindkey -v

# Q

# W

# F

# P

# G

# ----------------------------------------------

# A

# R

# S
# bindkey -M vicmd 'S: vi-insert-beg'
# bindkey -M vicmd 's: vi-insertion-mode'
# bindkey -M viins 'C-s: beginning-of-line'

# T
# bindkey -M vicmd 'T: vi-append-eol'
# bindkey -M vicmd 't: vi-append-mode'
# bindkey -M viins 'C-t: end-of-line'

# D
# bindkey -M vicmd '"dl": "db"'
# bindkey -M vicmd '"dy": "dW"'

# ----------------------------------------------

# Z

# X

# C
#add ctrl c as escape
# bindkey -M viins '"\C-c": "\C-["'
# stty intr ^X

# V

# B

# ----------------------------------------------
# ----------------------------------------------

# J

# L
bindkey -M vicmd 'l' vi-backward-word
# bindkey -M viins 'C-l: clear-screen'

# U
bindkey -M vicmd 'u' vi-up-line-or-history

# Y
bindkey -M vicmd 'y' vi-forward-word

# ----------------------------------------------

# H
# bindkey -M viins 'C-h: backward-kill-word'

# N
bindkey -M vicmd 'n' backward-char
bindkey -M vicmd 'C-n' previous-history
#bindkey -M viins 'C-n: previous-history'

# E
bindkey -M vicmd 'e' vi-down-line-or-history

# I
bindkey -M vicmd 'i' forward-char
#C-i generates a tab so it overrides autocomplete
#bindkey -M vicmd 'C-i: next-history'
#bindkey -M viins 'C-i: next-history'

# O

# '

# ----------------------------------------------

# K

# M

# ,

# .

# /

