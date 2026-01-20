
# @See https://ohmyz.sh/

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# --------------------------------------------------------------------------- #
# Themes
# --------------------------------------------------------------------------- #
# @See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ZSH_THEME="spaceship"

# --------------------------------------------------------------------------- #
# Plugins
# --------------------------------------------------------------------------- #
# @See https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins

# @See https://github.com/zsh-users

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
plugins=(
  git
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  autojump
  extract
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# --------------------------------------------------------------------------- #
# 别名 (Aliases)
# --------------------------------------------------------------------------- #

# alias python="/usr/bin/python3"
alias python="/opt/homebrew/bin/python3"

# 清屏
alias cl='clear'                               # 清屏
alias cls='clear'                              # 清屏 (Windows风格)

# 快速编辑
alias zshrc='code ~/.zshrc'                    # 编辑zsh配置
alias bashrc='code ~/.bashrc'                  # 编辑bash配置
alias vimrc='code ~/.vimrc'                    # 编辑vim配置
alias gitconfig='code ~/.gitconfig'            # 编辑gitconfig
alias hosts='sudo code /etc/hosts'             # 编辑hosts文件

# 配置重载
alias rezsh='source ~/.zshrc'                  # 重载zsh配置
alias rebash='source ~/.bashrc'                # 重载bash配置

# 时间和日期 (Time & Date)
alias now='date +"%T"'                         # 当前时间
alias date='date +"%d-%m-%Y"'                  # 当前日期
alias nowfull='date +"%Y-%m-%d %T"'            # 完整日期时间
alias week='date +%V'                          # 当前周数
alias cal='cal -3'                             # 显示三个月日历

# ============================================================================
# Node Package Manager
# ============================================================================
# @See https://github.com/antfu/ni

alias nio="ni --prefer-offline"
alias s="nr start"
alias d="nr dev"
alias b="nr build"
alias bw="nr build --watch"
alias t="nr test"
alias tu="nr test -u"
alias tw="nr test --watch"
alias w="nr watch"
alias p="nr play"
alias c="nr typecheck"
alias lint="nr lint"
alias lintf="nr lint --fix"
alias release="nr release"
alias re="nr release"

# Git
# ============================================================================
# 基础操作 (Basic Operations)
# ============================================================================
alias g='git'                          # git 命令的简短形式
alias gi='git init'                    # 初始化项目
alias gs='git status'                  # 查看仓库状态
alias gss='git status -s'              # 查看仓库状态（简洁版）

# ============================================================================
# 添加和提交相关 (Add & Commit)
# ============================================================================
alias ga='git add'                     # 添加文件到暂存区
alias gA='git add -A'                  # 添加所有文件到暂存区（整个仓库）
alias gaa='git add .'                  # 添加所有文件到暂存区（当前目录及其子目录） 
alias gau='git add -u'                 # 添加已跟踪的修改文件
alias gap='git add -p'                 # 交互式添加文件片段

alias gc='git commit'                  # 提交更改
alias gcm='git commit -m'              # 提交更改并添加消息
alias gca='git commit -a'              # 提交所有已跟踪文件的更改
alias gcam='git commit -a -m'          # 提交所有更改并添加消息
alias gcaa='git commit -a --amend'     # 修改上次提交
alias gcn='git commit --no-verify'     # 跳过钩子提交

# 快速提交组合
alias gac='git add -A && git commit -m' # 添加所有文件并提交
alias gacp='git add -A && git commit -m "$1" && git push'  # 添加、提交、推送

# ============================================================================
# 分支操作 (Branch Operations)
# ============================================================================
alias gb='git branch'                  # 查看本地分支
alias gba='git branch -a'              # 查看所有分支（本地+远程）
alias gbr='git branch -r'              # 查看远程分支
alias gbd='git branch -d'              # 删除本地分支
alias gbD='git branch -D'              # 强制删除本地分支
alias gbnm='git branch --no-merged'    # 查看未合并的分支
alias gbmm='git branch --merged'       # 查看已合并的分支

# ============================================================================
# 检出和切换 (Checkout & Switch)
# ============================================================================
alias gco='git checkout'               # 切换分支或恢复文件
alias gcb='git checkout -b'            # 创建并切换到新分支
alias gcom='git checkout master'       # 切换到 master 分支
alias gcos='git checkout master'       # 切换到 master 分支
alias gcod='git checkout develop'      # 切换到 develop 分支
alias gco-='git checkout -'            # 切换到上一个分支

# ============================================================================
# 远程操作 (Remote Operations)
# ============================================================================
alias gr='git remote'                  # 查看远程仓库
alias gra='git remote add'             # 添加远程仓库
alias grv='git remote -v'              # 查看远程仓库详细信息
alias grrm='git remote remove'         # 删除远程仓库
alias grso='git remote show origin'    # 查看 origin 远程仓库信息

# ============================================================================
# 拉取和推送 (Pull & Push)
# ============================================================================
alias gf='git fetch'                   # 获取远程更新
alias gfa='git fetch --all'            # 获取所有远程更新
alias gfo='git fetch origin'           # 获取 origin 远程更新

alias gp='git push'                    # 推送到远程
alias gpu='git push -u origin'         # 推送并设置上游分支
alias gpf='git push --force'           # 强制推送
alias gpfl='git push --force-with-lease' # 安全强制推送
alias gpd='git push --delete origin'   # 删除远程分支

alias gpl='git pull'                   # 拉取并合并
alias gplo='git pull origin'           # 从 origin 拉取并合并
alias gplr='git pull --rebase'         # 拉取并变基
alias gplro='git pull --rebase origin' # 从 origin 拉取并变基

# ============================================================================
# 差异和比较 (Diff & Comparison)
# ============================================================================
alias gd='git diff'                    # 查看工作目录差异
alias gdc='git diff --cached'          # 查看暂存区差异
alias gds='git diff --staged'          # 查看暂存区差异（同上）
alias gdw='git diff --word-diff'       # 按词显示差异
alias gdh='git diff HEAD'              # 与最新提交比较差异
alias gdt='git diff-tree --no-commit-id --name-only -r' # 查看提交中的文件

# ============================================================================
# 日志和历史 (Log & History)
# ============================================================================
alias gl='git log'                     # 查看提交日志
alias glo='git log --oneline'          # 单行显示提交日志
alias glg='git log --graph'            # 图形化显示提交日志
alias glgo='git log --graph --oneline' # 图形化单行显示
alias glga='git log --graph --all'     # 显示所有分支的图形化日志

# 美化的日志显示
alias glol='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias glola='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --all'

# 统计相关
alias glc='git log --oneline | wc -l'  # 统计提交数量
alias gls='git log --stat'             # 显示提交统计信息
alias glp='git log -p'                 # 显示提交的详细变更

# ============================================================================
# 合并和变基 (Merge & Rebase)
# ============================================================================
alias gm='git merge'                   # 合并分支
alias gmnf='git merge --no-ff'         # 非快进合并
alias gmt='git mergetool'              # 启动合并工具

alias grb='git rebase'                 # 变基
alias grbi='git rebase -i'             # 交互式变基
alias grbc='git rebase --continue'     # 继续变基
alias grba='git rebase --abort'        # 终止变基
alias grbs='git rebase --skip'         # 跳过当前变基提交

# ============================================================================
# 贮藏操作 (Stash Operations)
# ============================================================================
alias gst='git stash'                  # 贮藏当前更改
alias gstu='git stash -u'              # 贮藏包括未跟踪文件
alias gstm='git stash push -m'         # 贮藏并添加消息
alias gstl='git stash list'            # 查看贮藏列表
alias gsts='git stash show'            # 查看贮藏内容
alias gsta='git stash apply'           # 应用贮藏
alias gstp='git stash pop'             # 弹出贮藏
alias gstd='git stash drop'            # 删除贮藏
alias gstc='git stash clear'           # 清空所有贮藏

# ============================================================================
# 撤销和重置 (Undo & Reset)
# ============================================================================
alias gundo='git reset --soft HEAD~1'  # 撤销上次提交（保留更改）
alias gunstage='git reset HEAD'        # 取消暂存
alias greset='git reset --hard'        # 硬重置（危险操作）
alias gresets='git reset --soft'       # 软重置
alias gresetm='git reset --mixed'      # 混合重置

alias gclean='git clean -fd'           # 清理未跟踪文件
alias gcleanx='git clean -fdx'         # 清理所有未跟踪文件（包括忽略的）

# ============================================================================
# 标签操作 (Tag Operations)
# ============================================================================
alias gt='git tag'                     # 查看标签
alias gta='git tag -a'                 # 创建注释标签
alias gtd='git tag -d'                 # 删除本地标签
alias gtdr='git push origin --delete'  # 删除远程标签
alias gtl='git tag -l'                 # 列出标签

# ============================================================================
# 查找和搜索 (Find & Search)
# ============================================================================
alias gfind='git ls-files | grep'      # 在跟踪文件中查找
alias ggrep='git grep -n'              # 在仓库中搜索内容
alias gwho='git shortlog -sn'          # 查看贡献者统计
alias gblame='git blame'               # 查看文件修改历史

# ============================================================================
# 配置和信息 (Config & Info)
# ============================================================================
alias gcf='git config --list'          # 查看配置
alias gcfg='git config --global'       # 全局配置
alias gcfl='git config --local'        # 本地配置
alias ginfo='git remote show origin'   # 查看仓库信息

# ============================================================================
# 高级操作别名 (Advanced Operations)
# ============================================================================
alias gcp='git cherry-pick'            # 樱桃拣选提交
alias gcpc='git cherry-pick --continue' # 继续樱桃拣选
alias gcpa='git cherry-pick --abort'   # 终止樱桃拣选

alias gignore='git update-index --assume-unchanged' # 忽略文件更改
alias gunignore='git update-index --no-assume-unchanged' # 取消忽略
alias gignored='git ls-files -v | grep "^[[:lower:]]"' # 查看被忽略的文件

alias gcount='git rev-list --count HEAD' # 统计提交数量
alias gsize='git count-objects -vH'     # 查看仓库大小

# ============================================================================
# 自定义函数 (Custom Functions)
# ============================================================================

# 快速提交：添加所有文件并提交
function gacm() {
  if [ -z "$1" ]; then
    echo "❌ 请提供提交消息"
    echo "用法: gacm \"your commit message\""
    return 1
  fi
  git add -A && git commit -m "$1"
  echo "✅ 提交完成！"
}

# 推送到当前分支的远程
function gpush() {
  local branch=$(git branch --show-current)
  if [ -z "$branch" ]; then
    echo "❌ 当前不在 git 仓库中"
    return 1
  fi
  echo "📤 推送到远程分支: $branch"
  git push origin "$branch"
  echo "✅ 推送完成！"
}

# 从当前分支的远程拉取
function gpull() {
  local branch=$(git branch --show-current)
  if [ -z "$branch" ]; then
    echo "❌ 当前不在 git 仓库中"
    return 1
  fi
  echo "📥 从远程分支拉取: $branch"
  git pull origin "$branch"
  echo "✅ 拉取完成！"
}

# 创建新分支并切换
function gnew() {
  if [ -z "$1" ]; then
      echo "❌ 请提供分支名称"
      echo "用法: gnew <branch-name>"
    return 1
  fi
  echo "🌿 创建并切换到新分支: $1"
  git checkout -b "$1"
}

# 删除本地和远程分支
function gdelete() {
  if [ -z "$1" ]; then
    echo "❌ 请提供分支名称"
    echo "用法: gdelete <branch-name>"
    return 1
  fi
  git branch -d "$1" && git push origin --delete "$1"
}

# 查看文件的提交历史
function ghistory() {
  if [ -z "$1" ]; then
    echo "❌ 请提供文件名"
    echo "用法: ghistory <file-path>"
    return 1
  fi
  git log --follow -p -- "$1"
}

# 快速创建并推送标签
function gtag() {
  if [ -z "$1" ]; then
    echo "❌ 请提供标签名称"
    echo "用法: gtag <tag-name> [message]"
    return 1
  fi
  git tag -a "$1" -m "Tag $1" && git push origin "$1"
}

# 同步 fork 的仓库
function gsync() {
  git fetch upstream && git checkout master && git merge upstream/master && git push origin master
}
