#!/bin/sh

export KSROOT=/koolshare
source $KSROOT/scripts/base.sh
eval $(dbus export aliyundrivewebdav_)
alias echo_date='echo 【$(date +%Y年%m月%d日\ %X)】:'

pid_ali=$(pidof aliyundrive-webdav)
date=$(echo_date)

if [ -n "$pid_ali" ]; then
    text1="<span style='color: #6C0'>$date 阿里云盘 进程运行正常！(PID: $pid_ali)</span>"
else
    text1="<span style='color: red'>$date 阿里云盘 进程未在运行！</span>"
fi

http_response "$text1@"
