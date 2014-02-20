#!/bin/bash
rm -f *.deb
fpm -n awesome-demo-content -v `cat VERSION`.$BUILD_NUMBER -s dir -t deb html/
