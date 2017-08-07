# Robert's Emacs Setup

## Before doing anything

If you have an emacs installation, remove the .emacs.d directory from your home

If not, install emacs

Clone this directory into your home

## Getting Extra bits

Download and install Fira Code fonts (https://github.com/tonsky/FiraCode)

Download and install Input Fonts (http://input.fontbureau.com/download/)

## Finish Off

Start up emacs and let it download everything

Exit emacs and go in again

## Other stuff

### Cider/lein issue

If you get a Cider message - 'lein executable is not on your 'exec-path':

Add (setq exec-path (append exec-path '("/usr/local/bin"))) to 'init.el', assuming that's where leiningen is.

### Some settings

To save your session: M-x desktop-save

For this to be automatic, add (desktop-save-mode 1) to your init.el file

To change the default font size:

* options->set default font.... (I use 12)

* options->save defaults

## Most Used commands and things to learn

File, window and project management - All commands are on the tools->projectile menu

Magit - download cheat sheet and start using it 

Paredit and structural editing - the most used commands are on the Emacs/Clojure menu, but it's worth downloading a cheatsheet to learn others as well

