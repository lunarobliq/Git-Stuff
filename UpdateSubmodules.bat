@ECHO OFF

cd %USERPROFILE%\source\repos\
set /P reponame=Enter REPO  you want to update: 
cd %USERPROFILE%\source\repos\%reponame%
git submodule foreach git pull origin master
git commit -m "Updating the submodule"
git add .
git pull
git push
cd %USERPROFILE%\source\repos\