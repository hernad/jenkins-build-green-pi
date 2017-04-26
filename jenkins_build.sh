#!/bin/bash

cd vagrant

vagrant box add ARTACK/debian-jessie https://atlas.hashicorp.com/ARTACK/boxes/debian-jessie
vagrant init ARTACK/debian-jessie
vagrant up
