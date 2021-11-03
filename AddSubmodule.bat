@ECHO OFF
cd %USERPROFILE%\source\repos
echo List of Repo Folders on local machine:
DIR
set /P INPUT=Is this a new repo you will need to clone?(Y/N) %=%
If /I "%INPUT%"=="y" goto yes 
If /I "%INPUT%"=="n" goto no
:yes
set /P githubdomain1=Enter Github URL you want to CLONE as a repo locally(ie https://github.com/{Account}/{Repo}): 
git clone %githubdomain1%
goto no

:no
echo ---------------------------------------------------------------------------
echo Your going to be presented with 3 requests for input:
echo 1) What is the github URL of the repo your want to add as a submodule
echo 2) What do you want to call your submodule once you add it to the repo
echo 3) Enter the name of the Local Folder/Repo you want to add the submodule too
echo ---------------------------------------------------------------------------
set /P githubdomain=Enter Github URL you want to a ADD SUBMODULE to a repo(ie https://github.com/{Account}/{Repo}): 
set /P submodulename=Enter what you want to call submodule: 
dir %USERPROFILE%\source\repos\
set /P reponame=Enter Repo name to add submodule to: 
cd %USERPROFILE%\source\repos\%reponame%
git submodule add --force %githubdomain% %submodulename%
git submodule update --init --recursive
git add .
git commit -m "Add submodule"
git pull 
git push
cd %USERPROFILE%\source\repos