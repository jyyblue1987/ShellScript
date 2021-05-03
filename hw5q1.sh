PASSED=$1
if [ -d "${PASSED}" ] ; then
    echo "$PASSED is a directory";
    exit 1
else
    if [ -f "${PASSED}" ]; then
        echo "${PASSED} is a reguar file";
    else
        echo "${PASSED} does not exist";
        exit 1
    fi
fi

i=1
while read line; do
    for word in $line; do
        echo $1 "Word $i ($word) containes ${#word} characters"
        ((i=i+1))
    done  
done <$1