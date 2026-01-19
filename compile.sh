# Yes, this sh "script" is rather silly... but it does what it should so ¯\_(ツ)_/¯

COMPILER="lualatex"
TEXFILE="pelegs"
OUTPUT="pdf"
EXTRA="output"

$COMPILER -jobname="$TEXFILE-en" $TEXFILE
$COMPILER -jobname="$TEXFILE-de" $TEXFILE
pdftk "$TEXFILE-de.pdf" "$TEXFILE-en.pdf" cat output "$TEXFILE-cv_full.pdf"

mv *.pdf $OUTPUT
mv *.log *.bcf *.aux *.run* *.out $EXTRA
