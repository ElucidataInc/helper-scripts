#!/bin/bash
BIN_PATH_POLLY=$(which polly)
if [[ "$BIN_PATH_POLLY" == "" ]]
then
    echo "Polly not installed already"
else
    echo "Uninstalling and removing cache so that fresh version can be installed"
    BIN_PATH=$(dirname $BIN_PATH_POLLY)
    PATH_TO_DEL=$(realpath $BIN_PATH/../lib/node_modules/@elucidatainc)
    npm uninstall -g @elucidatainc/pollycli
    rm -rf $PATH_TO_DEL
fi
echo "Installing Polly CLI"
npm install -g @elucidatainc/pollycli
