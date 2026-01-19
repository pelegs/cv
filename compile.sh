# Yes, this sh "script" is rather silly... but it does what it should so ¯\_(ツ)_/¯

COMPILER="lualatex"
TEXFILE="pelegs"
OUTPUT="pdf"
EXTRA="output"

$COMPILER -jobname="$TEXFILE-en" $TEXFILE
$COMPILER -jobname="$TEXFILE-de" $TEXFILE

mv *.pdf $OUTPUT
mv *.log *.bcf *.aux *.run* *.out $EXTRA
