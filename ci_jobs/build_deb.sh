#!/bin/bash
rm -f *.deb
fpm --prefix /opt/awesome-demo -n awesome-demo-content -v `cat VERSION`.$BUILD_NUMBER -s dir -t deb html/
reprepro -Vb repo/ includedeb awesome repo *.deb
