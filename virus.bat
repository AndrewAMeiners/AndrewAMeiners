@echo off
color 04
title VIRUS INSTALLER
echo HOST CONTROLLER ESTABLISHING CONNECTION . . . 
timeout /t 1
echo HOST CONTROLLER ACCESS GRANTED.
echo HOST CONTROLLER ADMINISTRATOR ACCESS GRANTED.
echo DOWNLOADING VIRUSES . . . 
timeout /t 2
echo INSTALLING VIRUSES . . . 
timeout /t 2
echo HOST CONTROLLER COPYING USER DATA . . . 
timeout /t 2
echo HOST CONTROLLER DELETING USER DATA . . . 
timeout /t 1
echo DELETING SYSTEM FILES . . . 
tree
echo SYSTEM FILES DELETED.
echo ESTABLISHING CONNECTION WITH CAMERA LOG . . . 
timeout /t 2
echo UPLOADING CAMERA LOG TO HOST CONTROLLER . . . 
timeout /t 1
echo STARTING VIRUS SYSTEM INTRIGRATION . . . 
timeout /t 1
start /wait %userprofile%\Desktop\custvirus\error.vbs
start /wait %userprofile%\Desktop\custvirus\extremewarning.vbs
start /wait %userprofile%\Desktop\custvirus\viruscomputerowner.vbs
start /wait %userprofile%\Desktop\custvirus\goodbye.vbs
exit