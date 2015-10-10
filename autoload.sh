vendor-setup () {
    $(vendor-setup-gen $@)
}

vendor-pkg-path () {
    if [ $# -eq 0 ]
    then
        vendor-pkg-path-gen
    else
        $(vendor-pkg-path-gen $@)
    fi
}
