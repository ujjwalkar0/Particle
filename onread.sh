if [ "$fun1" == "!q" ]
then
echo "}" >> $file
    break
elif [[ $fun1 == \#* ]]
then
    echo "$fun1 " >> $file
elif [[ $fun1 == if* || $fun1 == while* ]]
then
    echo "$fun1 $fun2 $fun3{" >> $file
    source ~/Particle/rade.sh
    rade
elif [ -f ~/Particle/$fun1.sh ]
then
    source ~/Particle/$fun1.sh
    $fun1 $fun2 $fun3 $fun4 $fun5 $fun6 $fun7 $fun8
else
    echo "$fun1$fun2$fun3$fun4$fun5$fun6;" >> $file
    source ~/Particle/reading.sh                    
fi