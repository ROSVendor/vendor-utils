STYPE_ZSH="zsh"
STYPE_BASH="bash"
STYPE_SH="sh"

vendor_shell_type() {
    echo ${SHELL##/*/}
}

vendor_shell_rc() {
    echo "$HOME/.$(vendor_shell_type)rc"
}

vendor_has_ros() {
    if [ -v ROS_DISTRO -o -v ROS_PACKAGE_PATH ]
    then
        return 0
    else
        return -1
    fi
} 

