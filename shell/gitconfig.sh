#!/bin/bash

cat >/root/.gitconfig <<EOF
[credential]
    helper = store
[user]
    name = winterfell
    email = mimotronik@gmail.com
[alias]
    br = branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate
    # 切换分支
    ch=checkout

    # 检出本地分支
    chb=checkout -b

    # 删除本地分支
    db = branch -D

    # 删除远程分支
    dbr = push origin --delete

    ## init -> addurl
    # 添加远程地址
    addurl = !git remote add origin

    # 修改远程地址
    seturl = !git remote set-url origin

    ## copy -> seturl
    # 复制到新仓库
    copy = !git push --mirror

    # 拉当前分支代码
    pl=!git pull origin HEAD

    # 推送到当前分支
    ps=!git push origin HEAD
    done=!git push origin HEAD

    # 提交到本地
    cm = !git add -A && git commit -m
    save = !git add -A && git commit -m

    # 强制回滚
    back = !git reset --hard

    # 查看日志
    logs = log --color --stat --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%C(cyan)%h%Creset -%C(yellow)%d%Cblue %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit -5

    # 查看文件状态
    st=status
EOF