#!/usr/bin/env bash

function setupkeys {
 if [[ -z "$1" ]]; then
   echo "!! You need to enter a hostname in order to send your public key !!"
 else
   echo "* Copying SSH public key to server..."
   ssh ${1} "mkdir -p ~/.ssh && cat - >> ~/.ssh/authorized_keys" < ~/.ssh/id_rsa.pub
   echo "* All done!"
 fi
}