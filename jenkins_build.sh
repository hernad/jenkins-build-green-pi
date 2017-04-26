#!/bin/bash

cd vagrant

if ! vagrant box list | grep ARTACK/debian-jessie
then
   vagrant box add ARTACK/debian-jessie https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie
fi
vagrant init ARTACK/debian-jessie
vagrant up
vagrant provision


cd ..

mv vagrant/`date +%Y-%M-%d`-green-pi-lite.img   ..

