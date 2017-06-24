#!/bin/bash

# install Chef with omnitruck script (specify Chef version 13)
sudo su -c "curl -L https://omnitruck.chef.io/install.sh | bash -s -- -v 13"

# change into the Chef repo parent directory
cd src