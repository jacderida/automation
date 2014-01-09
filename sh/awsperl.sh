#!/usr/bin/env bash

curl https://raw.github.com/timkay/aws/master/aws -o aws
sudo perl aws --install
if [ ! -f ./.awssecret ]; then
	cat > ./.awssecret << EOL
<Insert AWS Key>
<Insert AWS Secret Key>
EOL
fi
