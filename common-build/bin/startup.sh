#!/bin/sh
# ##################################################################
#  启动脚本
# ##################################################################
CATALINA_OPTS="-Djava.library.path=/home/wcity/apr/lib -Xms4096m -Xmx4096m -XX:PermSize=128M -XX:MaxPermSize=512m"
nohup java -jar $CATALINA_OPTS mobile_ultimate_zuul-0.0.1.jar & 
#注意：必须有&让其后台执行，否则没有pid生成
# 将jar包启动对应的pid写入文件中，为停止时提供pidi
echo $! > run.pid
