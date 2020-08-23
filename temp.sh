args=("$@")
input="int i=56454654654654688654544654679544455;"
lfor="int i=346546545453131345434533546545431456;"

i=0
function="noanyfun"
#echo ${args[0]}
file=${args[0]}.c
if [ -e $file ]
then
	echo "File name already exist"
else
    touch $file
    echo "#include<stdio.h>" >> $file
    #if [ ${args[1]} ]
    #then
    #    echo "#include<${args[1]}.h>" >> $file
    #fi

    for var in "$@"
    do
        if [ ${args[0]} != $var ]
        then
            echo "#include<$var.h>" >> $file
        fi
    done

    while [ "$function" != "!quit" ]
    do
        read -p "[Line[$i]] : " function
		i=`expr $i + 1`
        if [ "$function" == "!quit" ]
        then
            break        
        elif [[ $function == \#* ]]
        then
            echo "$function " >> $file
        elif [[ $function == struct ]]
        then
            source structure.sh
            
        elif [[ $function ]]
        then
            echo "" >> $file
            echo "" >> $file
            if [ $function == "main" ]
            then
                echo "int main(){" >> $file
            else
                echo "$function {" >> $file
            fi
            while [ "$input" != "!quit" ]
            do
                read -p " >> " input
                if [ "$input" == "!quit" ]
                then
                    echo "return 0;" >> $file
                    echo "}" >> $file
                elif [[ $input == for* ]]
                then
                    eval "arr=($input)"
                    echo "int ${arr[1]};" >> $file
                    echo "int ${arr[2]};" >> $file
                    echo "for (${arr[1]}=0; ${arr[1]}<${arr[2]}; ${arr[1]}=${arr[1]}+${arr[3]}){" >> $file
                    while [[ $lfor ]]
                    do
                        read -p "      " lfor
                        if [ $lfor == "!quit" ]
                        then
                            lfor="int i=346546545453131345434533546545431456;"
                            break
                        else
                            echo "$lfor;" >> $file
                        fi 
                    done
                    echo "}" >> $file

                elif [[ $input == while* ]]
                then
                    eval "arr=($input)"
                    echo "int ${arr[1]};" >> $file
                    echo "int ${arr[2]};" >> $file
                    echo "while (${arr[1]}<${arr[2]}){" >> $file
                    while [[ $lfor ]]
                    do
                        read -p "      " lfor
                        if [ $lfor == "!quit" ]
                        then
                            lfor="int i=346546545453131345434533546545431456;"
                            break
                        else
                            echo "$lfor;" >> $file
                        fi 
                    done
                    echo "}" >> $file


                else
                    echo "$input ;" >> $file              
                fi
            done
        fi
        input="int i=53654654654564646465132134654845313213546546;"
    done
    while [ "$action" != "q" ]
	do
		read -p "Enter v for view, o for output, r for remove and q for quit and e for edit :  " action
		if test -f "$file"
		then
			#action="No_action"
			if [ "$action" == "o" ]
			then
				echo
				g++ -std=c++11 $file -o ujjwal.created_instead_of_a.out
				FILE=ujjwal.created_instead_of_a.out
				echo "[ Output ]"
				./$FILE
				rm $FILE
				echo ""
		
			elif [ "$action" == "r" ]
			then
				rm $file
			elif [ "$action" == "v" ]
			then
				echo		
				cat $file
				echo
			elif [ "$action" == "q" ]
			then
				echo quit
			elif [ "$action" == "e" ]
			then
				code $file
			else
				echo "Please Enter Correct option"
			fi
		else
			echo "File Deleted or Does not exist."
		fi
	done
fi

		#if [ "$input" != "!quit" ]
		#then
		#	echo "	$input " >> $file
		
		#else
		#	echo "}" >> $file_name
		#fi
	