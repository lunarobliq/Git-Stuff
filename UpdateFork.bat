@ECHO OFF
cd %USERPROFILE%\source\repos
echo [*] List of Repo Folders on local machine:
DIR %USERPROFILE%\source\repos
set /P INPUT=Do you have a forked copy locally?(Y/N) %=%
If /I "%INPUT%"=="y" goto yes 
If /I "%INPUT%"=="n" goto no

:no
cd %USERPROFILE%\source\repos\
set /P githubdomain1=Enter Github URL or GITHUB FORK repo(FORK)(ie https://github.com/{Account}/{Repo}):
git clone %githubdomain1%.git
set /P reponame=Enter Repo Name you want to update: 
cd %USERPROFILE%\source\repos\%reponame%
set /P githubdomain2=Enter Github URL or GITHUB Upstream repo(UPSTREAM)(ie https://github.com/{Account}/{Repo}):
git remote add upstream %githubdomain2%
git remote -v
git fetch upstream
git remote -v
git checkout master
git merge upstream/master
git push 
git pull
cd %USERPROFILE%\source\repos
goto end

:yes
cd %USERPROFILE%\source\repos\
set /P reponame=Enter FORK REPO URL you want to update (YOUR FORK): 
cd %USERPROFILE%\source\repos\%reponame%
git add .
git commit -m "Forked Update"
git pull 
git push
cd %USERPROFILE%\source\repos

:end
