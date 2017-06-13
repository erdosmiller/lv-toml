#/bin/bash

input=$(cat)
rm ../builds/decoder/input.txt 2> /dev/null
rm ../builds/decoder/output.txt 2> /dev/null
rm ../builds/decoder/error.txt 2> /dev/null
echo "$input" >> ../builds/decoder/input.txt
../builds/decoder/decoder.exe
cat ../builds/decoder/output.txt
if grep 1 ../builds/decoder/error.txt
then
    exit 1
fi
