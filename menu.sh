#!/bin/bash
# 显示菜单选项
# 设置一个无限循环
while :
do
    clear
    # 显示菜单
    echo "服务器名称 - $(hostname)"
    echo "-------------------------------"
    echo " 主菜单"
    echo "-------------------------------"
    echo "1. 显示日期和时间"
    echo "2. 显示用户正在干什么"
    echo "3. 显示网络连接"
    echo "4. 退出"
    # 获取用户输入
    read -p "输入你的选择 [ 1 -4 ] " choice
    # 使用case..in..esac 做选择
    case $choice in
        1)
            echo "今天是$(date)"
            read -p "按[Enter]键继续..." readEnterKey
            ;;
        2)
            w
            read -p "按[Enter]键继续..." readEnterKey
            ;;
        3)
            netstat -nat
            read -p "按[Enter]键继续..." readEnterKey
            ;;
        4)
            echo "拜拜！"
            exit 0
            ;;
        *)
            echo "错误：未知选项..."
            read -p "按[Enter]键继续..." readEnterKey
            ;;
    esac
done
