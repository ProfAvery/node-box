# Add ssh keys to keychain if they exist
keychain --ignore-missing id_rsa id_dsa
if [ -f $HOME/.keychain/$HOSTNAME-sh ]; then
    source $HOME/.keychain/$HOSTNAME-sh
fi
