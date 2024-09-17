#!/bin/sh
clear
DIR=$PWD
clear

echo "Building front end	..."
cd $DIR/client && npm run build
echo "Done! + Created files in:		$DIR/client/bundle/."
echo "Copying bundle files	..."
cp $DIR/client/bundle/static/*.js $DIR/server/public
cp $DIR/client/bundle/*.html $DIR/server/templates
echo "Done! + Copied files from 	$DIR/client/bundle/. -> $DIR/server/resources/."
cd $DIR
