#!/bin/bash

sudo su -

# install Chef with omnitruck script (specify Chef version 13)
curl -L https://omnitruck.chef.io/install.sh | bash -s -- -v 13

exit