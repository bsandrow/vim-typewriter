==============
vim-typewriter
==============

Ripped from here: http://www.reddit.com/r/vim/comments/ypxqt/celebrate_your_tiny_successes_from_within_vim/c5y01nw

This version uses `aplay` to work on Linux (rather than `afplay` in the
example). Annoyingly the cursor visibly moves around while typing (due to
executing a command and then going back to the regular position).

Installation
------------

If you are using Vundle or Pathogen, this should cleanly drop into your bundles
path. Otherwise, do something like: ::

    mkdir -p ~/.vim/{plugin,audio}
    cp audio/* ~/.vim/audio/
    cp plugin/typewriter.vim ~/.vim/plugin/

Credits
-------
I only compiled this from the Reddit thread referenced above, and made a small
tweak for Linux. Otherwise, all the credit goes to the Redditors that posted.
