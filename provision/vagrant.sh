#!/usr/bin/env bash

#Update the box
update_box() {
  echo "Updating box software"
  sudo apt-get update && sudo apt upgrade -y > /dev/null 2>&1
}
install_complements(){
    echo "Complemets"
    apt-get install -y git subversion curl vim screen ssh
    apt-get install -y lynx links links2
}

install_python(){
    echo "Python"
    apt-get -y install python3-pip python-dev build-essential
    pip3 install virtualenv
}

install_django(){
    cd /vagrant/code
    mkdir project-django
    cd project-django
    virtualenv venv
    source venv/bin/activate
    pip3 install django
    deactivate
}


setup() {
  update_box
  install_complements
  install_python
  install_django
  echo "Provision finished"
}

setup "$@"