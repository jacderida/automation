#!/usr/bin/env bash

curl https://raw.github.com/timkay/aws/master/aws -o aws
sudo perl aws --install
if [ ! -f ./.awssecret ]; then
	cat > ./.awssecret << EOL
AKIAIGIP7QEGGPCX7KZQ
gHlBcgmGIaQ1U7copH02aha1P1ceai/lZd1MRY3Y
EOL
fi
