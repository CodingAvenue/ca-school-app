#/usr/bin/env bash

cd validator; git pull origin master; 
cd -

cd reader; git pull origin master;
cd -

cd renderer; git pull origin master;
cd -

cd sandbox; git pull origin master;
cd -

cd platform; git pull origin master;
cd -

cd courses/ca-school-php-introduction; git pull origin getting-started;
cd -

git add . -A
git commit -m "Upgrade!"
git push
