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
plugins=(git git-flow vi-mode rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=~/bin:~/bin/gitflow:$PATH



#Colemak vi / ergoemacs hybrid

# Q

# W
bindkey -M vicmd 'w' vi-change

# F
bindkey -M vicmd 'f' vi-find-next-char
bindkey -M vicmd 'F' vi-find-prev-char
bindkey '\ef' backward-kill-word

# P
bindkey -M vicmd 'p' vi-repeat-find
bindkey -M vicmd 'P' vi-rev-repeat-find
bindkey '\ep' kill-word

# G

# ----------------------------------------------

# A
bindkey '\ea' set-mark-command

# R
bindkey -M vicmd 'r' vi-substitute

# S
bindkey -M vicmd 's' vi-insert
bindkey -M vicmd 'S' vi-insert-bol
bindkey '\es' backward-delete-char

# T
bindkey -M vicmd 't' vi-add-next
bindkey -M vicmd 'T' vi-add-eol
bindkey '\et' delete-char

# D
bindkey -M vicmd 'd' vi-delete
bindkey '\ed' kill-line
bindkey '\eD' backward-kill-line

# ----------------------------------------------

# Z
bindkey -M vicmd 'z' vi-undo-change
bindkey '\ez' undo

# X
bindkey -M vicmd 'x' vi-delete-char
bindkey '\ex' kill-region

# C
bindkey -M vicmd 'c' vi-yank
bindkey '\ec' copy-region-as-kill

# V
bindkey -M vicmd 'v' vi-put-after
bindkey '\ev' yank

# B
bindkey -M vicmd 'b' vi-match-bracket

# ----------------------------------------------
# ----------------------------------------------

# J

# L
bindkey -M vicmd 'l' vi-backward-word
bindkey '\el' backward-word
bindkey 'C-l' clear-screen

# U
bindkey -M vicmd 'u' vi-up-line-or-history
bindkey '\eu' up-history

# Y
bindkey -M vicmd 'y' vi-forward-word
bindkey '\ey' forward-word

# ----------------------------------------------

# H
bindkey '\eh' beginning-of-line
bindkey '\eH' end-of-line

# N
bindkey -M vicmd 'n' backward-char
bindkey -M vicmd 'N' vi-beginning-of-line
bindkey '\en' backward-char
bindkey '\eN' beginning-of-history

# E
bindkey -M vicmd 'e' vi-down-line-or-history
bindkey '\ee' down-history

# I
bindkey -M vicmd 'i' forward-char
bindkey -M vicmd 'I' vi-end-of-line
bindkey '\ei' forward-char
bindkey '\eI' end-of-history

# O
bindkey -M vicmd 'o' vi-open-line-below
bindkey -M vicmd 'O' vi-open-line-above

# '

# ----------------------------------------------

# K
bindkey -M vicmd 'k' vi-repeat-search
bindkey -M vicmd 'K' vi-rev-repeat-search

# M

# ,

# .
bindkey -M vicmd '.' vi-repeat-change

# /
bindkey '\e?' history-incremental-search-forward
bindkey '\e/' history-incremental-search-backward

