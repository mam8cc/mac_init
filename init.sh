#!/bin/bash


install_pip() {
  if hash pip 2>/dev/null; then {
    echo "pip already installed... skipping"
  }
  else {
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
    sudo python get-pip.py
  }
  fi
}

install_ansible() {
  if hash ansible-galaxy 2>/dev/null; then {
    echo "ansible-galaxy already installed... skipping"
  }
  else {
    pip install ansible
  }
  fi
}

install_homebrew() {
  if hash brew 2>/dev/null; then {
    echo "homebrew already installed... skipping"
  }
  else {
    ansible-galaxy install icopp.homebrew
    brew update
  }
  fi
}

install_pip
install_ansible
install_homebrew
#pip install ansible
#ansible-galaxy install icopp.homebrew
#brew update
#brew install python3
