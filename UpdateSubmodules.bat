@ECHO OFF

cd %USERPROFILE%\source\repos\
set /P reponame=Enter FORK REPO URL you want to update (YOUR FORK): 
cd %USERPROFILE%\source\repos\%reponame%
git submodule foreach git pull origin master
git commit -m "Updating the submodule 'mod' to the latest version
git add .
git pull
git push