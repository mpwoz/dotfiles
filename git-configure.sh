#!/bin/bash
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.st status
git config --global alias.lg log

git config --global credential.helper 'cache --timeout=10800' # 3h

git config --global user.name "Martin Wozniewicz"
git config --global user.email martin.woz@gmail.com
