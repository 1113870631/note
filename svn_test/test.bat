echo off
set QUEST_NAME=test
set QUEST_BRANCH=svn://svn.svnbucket.com/1113870631/svn_test/
set LOCAL_DIR=D:\
set LINUX_DIR=Z:\EXT\my_branch\

set MY_BRANCH_NAME=IPCDXXXX%QUEST_NAME%_my
set MY_BRANCH_RAW_NAME=IPCDXXXX%QUEST_NAME%_raw
set SVN_REMOTE_BASE_DIR=svn://svn.svnbucket.com/1113870631/test/

set MY_BRANCH=%SVN_REMOTE_BASE_DIR%%MY_BRANCH_NAME%

rem set SVN_CMD_HOME=C:\Users\admin\Desktop\Apache-Subversion-1.14.0\bin
rem set path=%path%;%SVN_CMD_HOME%

rem svn up --username zhangsan --password 123456

rem 拷贝分支
svn cp %QUEST_BRANCH% %MY_BRANCH%  || goto error

rem checkout分支
start  1.bat 
start  2.bat 
start  3.bat 
exit

:error
echo cp branch error
exit