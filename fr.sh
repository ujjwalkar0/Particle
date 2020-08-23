fr(){
    echo "int $1;" >> $file
    echo "int $2;" >> $file

    echo "for ($1=0;$1<$2;$1++){" >> $file
    source ~/Particle/rade.sh
    rade
    echo "}" >> $file

}