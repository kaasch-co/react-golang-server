#!/bin/sh
clear
DIR=$PWD
OUTPUT="server.bin"
clear

echo "BUILDING IN:	3..."
sleep 0.25
clear
echo "BUILDING IN:	3.."
sleep 0.25
clear
echo "BUILDING IN:	3."
sleep 0.25
clear
echo "BUILDING IN: 	3"
sleep 0.25
clear
echo "BUILDING IN:	2..."
sleep 0.25
clear
echo "BUILDING IN:	2.."
sleep 0.25
clear
echo "BUILDING IN:	2."
sleep 0.25
clear
echo "BUILDING IN: 	2"
sleep 0.25
clear
echo "BUILDING IN:	1..."
sleep 0.25
clear
echo "BUILDING IN:	1.."
sleep 0.25
clear
echo "BUILDING IN:	1."
sleep 0.25
clear
echo "BUILDING IN: 	1"
sleep 0.25
clear

echo "Building front end	..."
sleep 1

cd $DIR/client && npm run build
sleep 1
clear

echo "Done! + Created files in:		$DIR/client/bundle/."
sleep 1

echo "Copying bundle files	..."
sleep 1

cp $DIR/client/bundle/static/*.js $DIR/server/public
cp $DIR/client/bundle/*.html $DIR/server/templates
sleep 1
clear

echo "Done! + Copied files from 	$DIR/client/bundle/. -> $DIR/server/resources/."
sleep 1

echo "Building backend		..."
sleep 1

cd $DIR/server && go build -o $OUTPUT
sleep 1
clear

echo "Done! + Created file:			$DIR/server/$OUTPUT"
sleep 1

cd $DIR
echo "Build complete."
sleep 3
