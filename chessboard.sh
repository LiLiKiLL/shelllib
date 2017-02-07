#!/bin/bash
for (( i = 1; i <= 8; i++ )) ### 外层for循环 ###
do
    for (( j = 1 ; j <= 8; j++ )) ### 内层for循环 ###
    do
        total=$(( $i + $j)) # 总数
        tmp=$(( $total % 2)) # 模数
        # 通过找出偶数值和奇数值来改变颜色
        # 使用奇数和偶数来交替变换颜色
        if [ $tmp -eq 0 ];
        then
            echo -e -n "\033[47m  "
        else
            echo -e -n "\033[40m  "
        fi
    done
    echo "" #### 打印新行 ###
done
