Simple test library example project with unittests using cmake build and debian package generation

Code released under MIT Expat License cf LICENSE.md

-----------------------------------
Linux compilation and installation
-----------------------------------
requirements: libboost-test-dev
$>sudo apt-get install libboost-test-dev

to build and install project:
$>sh install.sh

lib will be installed under ${CMAKE_INSTALL_PREFIX}/${PROJECT_NAME}/lib directory
includes will be installed under ${CMAKE_INSTALL_PREFIX}/${PROJECT_NAME}/include directory

to change install directory, edit install.sh and change
CMAKE_INSTALL_PREFIX=/your_prefix_directory
otherwise default CMAKE_INSTALL_PREFIX=/usr

---------------------------------
Linux compilation only (Release)
---------------------------------
to build project:
$>sh compile_release.sh

---------------------------------
Linux compilation only (Debug)
---------------------------------
to build project:
$>sh compile_debug.sh

---------------------------------
run unittests (after compilation)
---------------------------------
$>cd build && make test

-------------------------
remove compilation files 
-------------------------
$>sh script_clean.sh

-------------------------
uninstall project
-------------------------
$>sudo sh uninstall.sh

--------------------------------------
create debian package for the library
--------------------------------------
$>sh compile_release.sh
$>cd build
$>cpack



