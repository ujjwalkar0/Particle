#source help.sh
#args=("$@")
#math ${args[0]} ${args[1]}

struct(){
    if [[ $fun2 ]]
    then
        echo "$fun1 $fun2{" >> $file
    else
        echo "$fun1 {" >> $file
    fi

    source ~/Particle/reading.sh
    reading

    echo "}" >> $file

    for var in "$@"
    do
        if [ "$var" != "$fun2" ]
        then
            if [ "$var" == "$fun3" ]
            then
                echo "$var" >> $file
            else
                echo ",$var" >> $file
            fi
        fi
    done
    echo ";" >> $file

    
        

}