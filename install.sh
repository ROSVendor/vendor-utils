#!/bin/bash

GITHUB_REPO="https://github.com/XDUBESLab/vendor-utils.git"
LOCAL_PATH="$HOME/.vdedor-utils"
SHELL_TYPE=${SHELL##/*/}
USR_RC_PATH="$HOME/.$SHELL_TYPE"rc

git clone $GITHUB_REPO $LOCAL_PATH
echo export PATH=\"\$PATH:$LOCAL_PATH/bin\" >> $USR_RC_PATH
echo export VENDOR_UTILS_PATH=$LOCAL_PATH   >> $USR_RC_PATH
