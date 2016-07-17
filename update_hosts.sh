#!/bin/bash

dir="$( cd "$( dirname "$0" )" && pwd )"
cd $dir
rm hosts.bak
rm hosts
wget "https://raw.githubusercontent.com/racaljk/hosts/master/hosts" --no-check-certificate
cp /etc/hosts ./hosts.bak
echo -e \n >> hosts
echo "127.0.0.1 "${hostname}>>hosts
echo "127.0.0.1 "localhost>>hosts
echo "mirrors.neusoft.edu.cn " dl-ssl.google.com>>hosts
echo "mirrors.neusoft.edu.cn " dl.google.com>>hosts
echo "www.google.com.hk " www.google.com>>hosts
cp ./hosts /etc/hosts
# echo "Success"
