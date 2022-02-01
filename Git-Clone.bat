cd %USERPROFILE%\source\repos\%reponame%
set /P reponame=Enter Repo URL (.wiki.git for wiki's):
git clone %reponame%
cd %USERPROFILE%\source\repos
