#!/bin/bash

# For Ubuntu. Change the apt-get to something else if you don't use Ubuntu
# wget https://silvertriclops.github.io/iodineinstaller/iodineinstaller.sh && chmod +x iodineinstaller.sh && ./iodineinstaller.sh
apt-get install -y iodine
cat > ig <<EOF
#!/bin/bash
iodined -cP [password] 10.169.0.1/24 [host]
EOF
cat > is <<EOF
#!/bin/bash
pkill iodine
EOF
chmod +x ig
chmod +x is
echo "Open ig to edit [password] and [host]"
echo "./ig to start and ./is to stop"