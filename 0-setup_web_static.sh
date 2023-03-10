#!/usr/bin/env bash
# sets up web servers 

sudo apt update
-v nginx || sudo apt install nginx
mkdir -p /data/web_static/releases/test/
mkdir -p /data/web_static/shared/
echo -e "<html>\n\t<head>\n\t</head>\n\t<body>\n\t\tHolberton School\n\t</body>\n</html>" | sudo tee /data/web_static/releases/test/index.html
ln -fs /data/web_static/releases/test/ /data/web_static/surrent
chown -R ubuntu:ubuntu /data/
sed -i \"35i $STATIC" $SRC
service nginx restart
exit 0
