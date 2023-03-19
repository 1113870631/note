echo off
set QUEST_NAME=test
set QUEST_BRANCH=svn://svn.svnbucket.com/1113870631/svn_test/
set MY_BRANCH=IPCDXXXX%QUEST_NAME%_my
set MY_BRANCH_RAW=IPCDXXXX%QUEST_NAME%_raw
set LOCAL_DIR=D:\
set SVN_REMOTE_DIR=svn://svn.svnbucket.com/1113870631/test/
rem set SVN_CMD_HOME=C:\Users\admin\Desktop\Apache-Subversion-1.14.0\bin
rem set path=%path%;%SVN_CMD_HOME%

rem svn up --username zhangsan --password 123456

rem 拷贝分支
svn cp %QUEST_BRANCH% %SVN_REMOTE_DIR%%MY_BRANCH%  

rem checkout分支
start  1.bat 
start  2.bat 

exit
pause

:error
echo cp branch error