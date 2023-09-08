#!/bin/sh
# This is a script install vscode-server automatically
commitId=`curl https://update.code.visualstudio.com/latest/server-linux-x64/stable 2>&1 | grep -E -o '[a-z0-9]{40}'`
if [ -z $commitId ]; then
    echo "cannot get latest commitId!"
    exit 1
fi

echo "latest commitId: $commitId"
echo "start to set up dic"
extractDic="$HOME/.vscode-server/cli/servers/Stable-$commitId/server"
echo "extractDic is $extractDic"
mkdir -p $extractDic
cd $extractDic
curl -L https://update.code.visualstudio.com/latest/server-linux-x64/stable -o vscode-server-linux-x64.tar.gz
echo "download latest vscode-server-linux-x64.tar.gz done"
tar -xvzf vscode-server-linux-x64.tar.gz --strip-components 1
echo "now you can remote ssh to this machine. enjoy~"