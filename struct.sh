struct(){
    if [[ $1 ]]
    then
        echo "struct $1{" >> $file
    else
        echo "struct {" >> $file
    fi

    source ~/Particle/rade.sh
    rade
  
    if [[ $2 ]]
    then
        echo "$2;" >> $file
    fi      

}