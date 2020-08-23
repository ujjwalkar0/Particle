echo "#include<stdio.h>" >> $file
    for var in "$@"
    do
        if [ ${args[0]} != $var ]
        then
            echo "#include<$var.h>" >> $file
        fi
    done