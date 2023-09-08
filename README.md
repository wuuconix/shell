# shell

my shell scripts.

**zsh.sh**:

> Install oh-my-zsh with two good plugins automatically
>
> which are zsh-syntax-highlighting and zsh-autosuggestions

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/wuuconix/shell/main/zsh.sh)"
```

**xray.sh**:

> Install [xray](https://github.com/chaitin/xray) & [serve](https://www.npmjs.com/package/serve) automatically
>
> xray will follow your system architecture e.g. amd64
>
> serve is installed for preview result.html

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/wuuconix/shell/main/xray.sh)"
```

**vscode-server.sh**

> Install latest vscode-server in a server
>
> Useful in some company intranet situations
>
> Just set proxy and run this script
>
> And you can remote ssh to this machine in your vscode~

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/wuuconix/shell/main/vscode-server.sh)"
```