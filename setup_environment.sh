#!/bin/bash

#apt-get update
# apt-get install python-sqlalchemy || { echo 'installing python-sqlalchemy failed'; exit 1; }


function install {
  apt-get -y install $1 || { echo "ERROR: installing ${1}"; exit 1; }
}


install 'vim';

install 'shunit2';

install 'python-sqlalchemy' ;




