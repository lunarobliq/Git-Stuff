@ECHO OFF

cd %USERPROFILE%\source\repos\
DIR %USERPROFILE%\source\repos
set /P reponame=Enter REPO you want to update: 
cd %USERPROFILE%\source\repos\%reponame%
DIR %USERPROFILE%\source\repos\%reponame%
set /P submodule=Enter SUBMODULE you want to remove: 
git submodule deinit %submodule%
git rm -rf %USERPROFILE%\source\repos\%reponame%\%submodule%
git rm -rf %USERPROFILE%\source\repos\%reponame%\.git\modules\%submodule%
git commit -m "Removed submodule"
git push
cd %USERPROFILE%\source\repos\
