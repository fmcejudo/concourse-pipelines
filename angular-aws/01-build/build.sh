#!/usr/bin/env bash

cd source_code
ls

cat package.json
sudo npm install 
sudo npm install -g @angular/cli:7.3.6 > /dev/null

ng build --prod

cp dist/ ../dist/

