#!/bin/sh
if [ -d build ]; then
   cd build
   if [ -f install_manifest.txt ]; then
       cat install_manifest.txt | tr '\n' '\0' | xargs -0 --verbose rm
   else
       cd ..
       echo "no install_manifest.txt in build directory cannot automatically uninstall program, please proceed manually"
   fi
else
    echo "no build directory with install_manifest.txt cannot automatically to uninstall program, please proceed manually"
fi
