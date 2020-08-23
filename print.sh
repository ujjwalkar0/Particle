print(){
    if [[ $2 ]]
    then
        echo "printf(\"$1\",$2);" >> $file
    else
    echo "printf(\"$1\");" >> $file
    fi
}