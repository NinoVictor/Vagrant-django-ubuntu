#!/usr/bin/env bash

#Update the box
update_box() {
  echo "Updating box software"
  sudo apt-get update && sudo apt upgrade -y > /dev/null 2>&1
  sudo apt-get install -y tree git curl wget > /dev/null 2>&1
}

install_pip(){
  sudo apt-get install -y python3-pip
}


setup() {
  update_box
  install_pip
  echo "Provision finished"
}

setup "$@"