#/bin/bash

input=$(cat)
rm ../builds/encoder/input.txt 2> /dev/null
rm ../builds/encoder/output.txt 2> /dev/null
rm ../builds/encoder/error.txt 2> /dev/null
echo "$input" >> ../builds/encoder/input.txt
../builds/encoder/encoder.exe
cat ../builds/encoder/output.txt
if grep 1 ../builds/encoder/error.txt
then
    exit 1
fi
