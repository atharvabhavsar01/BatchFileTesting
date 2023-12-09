@echo off

rem Repository URL 
set REPO_URL="https://github.com/atharvabhavsar01/BatchFileTesting.git"

rem Local path  
set LOCAL_PATH="D:\kkw atharva\PROJECT\Batchfiletest\clone"

rem Check if the directory exists and is a Git repository
if not exist %LOCAL_PATH%\.git (
    git clone %REPO_URL% %LOCAL_PATH%
) else (
    cd %LOCAL_PATH%
    git pull origin main
)

cd %LOCAL_PATH%

git add .

git commit -m "Code pushed using Batchscript."

git push origin main

echo Code pushed to GitHub successfully!
