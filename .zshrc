
# See https://ohmyz.sh/

# --------------------------------------------------------------------------- #
# Themes
# --------------------------------------------------------------------------- #
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ZSH_THEME="spaceship"

# --------------------------------------------------------------------------- #
# Plugins
# --------------------------------------------------------------------------- #
# @See https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins

# See https://github.com/zsh-users

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# --------------------------------------------------------------------------- #
# 别名 (Aliases)
# --------------------------------------------------------------------------- #

# alias python="/usr/bin/python3"
alias python="/opt/homebrew/bin/python3"

# clear terminal
alias cl='clear'

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
alias gA='git add -A'
alias gaa='git add .'                  # 添加所有文件到暂存区
alias gau='git add -u'                 # 添加已跟踪的修改文件
alias gap='git add -p'                 # 交互式添加文件片段

alias gc='git commit'                  # 提交更改
alias gcm='git commit -m'              # 提交更改并添加消息
alias gca='git commit -a'              # 提交所有已跟踪文件的更改
alias gcam='git commit -a -m'          # 提交所有更改并添加消息
alias gcaa='git commit -a --amend'     # 修改上次提交
alias gcn='git commit --no-verify'     # 跳过钩子提交

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
alias gpff='git push --force-with-lease' # 安全强制推送
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

 ============================================================================
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

# ============================================================================
# 查找和搜索 (Find & Search)
# ============================================================================
alias gfind='git ls-files | grep'      # 在跟踪文件中查找
alias ggrep='git grep -n'              # 在仓库中搜索内容
alias gwho='git shortlog -sn'          # 查看贡献者统计

# ============================================================================
# 配置和信息 (Config & Info)
# ============================================================================
alias gcf='git config --list'          # 查看配置
alias gcfg='git config --global'       # 全局配置
alias gcfl='git config --local'        # 本地配置

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
