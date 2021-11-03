@ECHO OFF
cd %USERPROFILE%\source\repos\
DIR %USERPROFILE%\source\repos
set /P reponame=Enter REPO you want to update: 
cd %USERPROFILE%\source\repos\%reponame%
DIR %USERPROFILE%\source\repos\%reponame%
set /P submodule=Enter SUBMODULE you want to remove: 
git submodule deinit %submodule%
git rm -rf %submodule%
git commit-m "Removed submodule"
rm -rf .git/modules/%submodule%
git push
