#!/bin/bash

CUR_DIR=/c/Users/USERNAME/source/repos

echo "[*] Pulling in latest changes for all repositories..."

cd $CUR_DIR

for i in $(ls -la | cut -c 48-); do
    echo "";
    echo "[+]	Working Dir = "+$i;
    echo "";
	
    cd $i;

    git pull
	
    cd $CUR_DIR
done

echo "[*] Complete!"
