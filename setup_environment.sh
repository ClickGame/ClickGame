#!/bin/bash



#apt-get update;

function set_git_config_commit_vim {
  git config --global core.editor "vim"
}

function install {
  apt-get -y install $1 || { echo "ERROR: installing ${1}"; exit 1; }
}

function install_the_database {
  install python-mysqldb

  DB_REPO="http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu";

  install python-software-properties;

  apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db || { echo 'ERROR: adding keys for MariaDB'; exit 1; }
echo $DB_REPO
  add-apt-repository "deb $DB_REPO precise main" || { echo 'ERROR: adding repo for MariaDB'; exit 1; }
  apt-get update;


  install mariadb-server;
}




# install 'vim';

#set_git_config_commit_vim;

#install 'shunit2';

#install 'python-sqlalchemy' ;

install_the_database;








