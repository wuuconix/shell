#!/bin/sh
# This is a script install xray & serve automatically
arch=`dpkg --print-architecture`
apt install -y unzip && \
mkdir -p ~/xray && \
cd ~/xray && \
curl -OL https://github.com/chaitin/xray/releases/download/1.9.5/xray_linux_$arch.zip && \
unzip xray_linux_$arch.zip && \
rm xray_linux_$arch.zip && \
chmod +x ./xray_linux_$arch && \
mv xray_linux_$arch xray && \
curl "https://gist.githubusercontent.com/wuuconix/30fbdc72c96e5fe1e32547baf7f1d7ef/raw/48efd2c0aa71c1092c7d5c8f3a3d133f2030eaee" -o start.sh && \
chmod +x start.sh && \
mkdir result && \
./xray && \
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
apt install -y nodejs && \
node -v && \
npm i -g serve && \
echo -e "\033[32mCongratulations! Install and Configure Done. \033[0m" && \
echo -e "\033[32mcd ~/xray \033[0m" && \
echo -e "\033[32m./start.sh https://github.com/wuuconix/shell \033[0m"