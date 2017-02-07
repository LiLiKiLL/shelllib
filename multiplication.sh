#!/bin/bash
n=$1
# 确保shell脚本有命令行参数传入
if [ $# -eq 0 ]
then
    echo "一个打印乘法表的shell脚本"
    echo "使用方法 : $0 number"
    exit 1
fi

# 使用for循环
for i in {1..10}
do
    echo "$n * $i = $(( $i * $n))"
done
