#!/bin/bash


###############################################################################
# Mail                                                                        #
###############################################################################

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

###############################################################################
# Spotify                                                                     #
###############################################################################

# Add the keyboard shortcut ⌘ + 1 to open client
defaults write com.spotify.client NSUserKeyEquivalents -dict-add "Spotify" "@1"
