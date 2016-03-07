#!/bin/bash

GITHUB_REPO="https://github.com/XDUBESLab/vendor-utils.git"
LOCAL_PATH="$HOME/.vendor-utils"
SHELL_TYPE=${SHELL##/*/}
USR_RC_PATH="$HOME/.$SHELL_TYPE"rc

if [ -d $LOCAL_PATH ]
then
    echo "Error: default install path $LOCAL_PATH already exists."
    exit -1
else
    git clone $GITHUB_REPO $LOCAL_PATH
fi

echo export PATH=\"\$PATH:$LOCAL_PATH/bin\"   >> $USR_RC_PATH
echo export VENDOR_UTILS_PATH=\"$LOCAL_PATH\" >> $USR_RC_PATH
echo source "$LOCAL_PATH/autoload.sh"         >> $USR_RC_PATH
source $USR_RC_PATH
echo "Done."
