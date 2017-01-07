#!/bin/bash
# 一个备份MySQL数据库的示例脚本

# 获取今日日期
NOW=$(date +"%Y%m%d")

# 存储mysql备份的位置
BAK="$HOME/.mysql-database"

# MySQL服务器的登录信息
MUSER="root" ### mysql用户名 ###
MPASS="root" ### mysql密码 ###
MHOST="127.0.0.1" ### mysql主机名 ###

# 常用的程序完全路径
MYSQL="/usr/bin/mysql"
MYSQLDUMP="/usr/bin/mysqldump"
GZIP="/bin/gzip"

# 使用逻辑非判断如果备份目录不存在则创建
if [ ! -d "$BAK" ]
then
mkdir -p "$BAK"
fi

# 获取所有的数据库名
DBS="$($MYSQL -u $MUSER -h $MHOST -p$MPASS -Bse 'show databases')"

# 开始备份
echo -n "备份中……"

# 使用for循环
for db in $DBS
do
FILE="$BAK/mysql-$db.$NOW-$(date +"%T").gz"
$MYSQLDUMP -u $MUSER -h $MHOST -p$MPASS $db | $GZIP -9 > $FILE
echo -n "."
done
echo -n "...完成"
echo ""
