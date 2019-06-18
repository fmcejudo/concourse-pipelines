#!/usr/bin/env bash

cd source_code

npm install > /dev/null 
npm install -g @angular/cli > /dev/null
ng config -g cli.warnings.versionMismatch false

ng --version
ng build --prod > /dev/null

cp -r dist/ ../dist/

