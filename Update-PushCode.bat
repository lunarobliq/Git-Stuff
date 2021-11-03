@ECHO OFF
cd %USERPROFILE%\source\repos
echo [*] List of Repo Folders on local machine:
DIR %USERPROFILE%\source\repos

set /P reponame=Enter Repo Name to Update Code for (list above):
set /P cmsg=Enter Commit Message: 
cd %USERPROFILE%\source\repos\%reponame%
git add .
git commit -m "%cmsg%"
git pull 
git push
cd %USERPROFILE%\source\repos
