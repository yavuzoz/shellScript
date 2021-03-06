fileName="./app.js"
newFileName="./main.js"

if [ -f "$fileName" ]
then
	mv "$fileName" "$newFileName"
else
	touch "$newFileName"
fi


function addition() {
    let a=5
    let b=4
    let "c = $a + $b"
    echo $c
}


FILES=$(ls *.js)
for filename in FILES
newFile = ' main '
for FILE in $FILES
do 
   echo "FILE Name is found $newFile-$FILE "
   cd $newFile
   done
LIST="inner.html"
    for SUBJECT in $LIST
    #do 
    #echo $SUBJECT.
    #done
   COUNTER=1
   until [ $COUNTER -gt 5 ]
    do
       echo $COUNTER
      ((COUNTER++))
       done 
       echo completed