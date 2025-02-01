@echo off
title pyuic
if exist gui_old.py del gui_old.py
ren gui.py gui_old.py
pyuic5 -o $gui.py gui.ui
pyrcc5 -o $image_rc.py image.qrc
copy /b $image_rc.py + $gui.py gui.py
del $gui.py
del $image_rc.py
echo OK!
pause