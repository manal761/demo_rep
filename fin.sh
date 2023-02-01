count=0
count2=0
for i in `ls`
    do  
        if [ -x $i ]
        then 
            let "count = $(($count+1))"
            echo $i >> list_exe.txt
        
        else
            let "count2 = $(($count2+1))"
        fi
    done
echo "on a  $count fichiers exécutables sont dans list_exe.txt" 
echo "on a  $count2 fichiers non exécutables sont dans list_exe.txt" 