REM based on the blog-question found here: http://www.imagemagick.org/discourse-server/viewtopic.php?t=16249
set SRC=input/
del *.png

setlocal EnableDelayedExpansion

for %%F in (%SRC%*.jpg) do magick convert %SRC%%%F -gamma .45455 -resize "256x256^^" -crop 256x256+0+0 +repage -gamma 2.2 !RANDOM!_%%~nF.png
  
magick montage *.png -geometry 256x256+0+0 -tile 10x15 collage.jpg
del *.png
