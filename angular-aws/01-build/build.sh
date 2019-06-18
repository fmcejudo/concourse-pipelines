#!/usr/bin/env bash

npm install 
npm install -g @angular/cli > /dev/null
ng build --prod

cp dist/ ../build/

