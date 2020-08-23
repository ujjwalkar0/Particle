delete(){
    if [ -e $file ]
    then
        rm $file
    else
        echo "File already deleted"
    fi
}
