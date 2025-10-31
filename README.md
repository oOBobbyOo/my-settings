# My Settings

## vscode

[`.vscode/settings.json`](./.vscode/settings.json)</br>
[`.vscode/extensions.json`](./.vscode/extensions.json)</br>
[`.vscode/global.code-snippets`](./.vscode/global.code-snippets)</br>

```shell
# 导出全部拓展
code --list-extensions > extensions.txt
```

## zsh

[`.zshrc`](./.zshrc)

```shell
# https://brew.sh/
brew install zsh

# 查看配置文件
cat ~/.zshrc

# 编辑配置文件
code ~/.zshrc

# 启动新的zsh配置
source ~/.zshrc
```

## on-my-zsh

```shell
# https://github.com/ohmyzsh/ohmyzsh

# curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# wget
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 查看内置主题
ls ~/.oh-my-zsh/themes/
```

## LICENSE

[`MIT`](./LICENSE)
