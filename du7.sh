#!/bin/bash


read -p "Zadaj text spravy: " message

day=$(date +"%a")
hour=$(date +"%H")
result="None"

if [[ ${day} == Ne || ${day} == So ]]
  then
  if [[ ${hour} -ge 18 || ${hour} -le 6 ]]
    then
    source "/home/inka/My data/courses/LinuxScripting/du6.sh"
  fi
fi


if [[ $result == "True" || $result == "None" ]]
  then echo "${message}"
       exit 0	
elif [[ $result == "False" ]]
  then echo "Nespravny vysledok! Dalsi priklad sa zobrazi za 30 sekund."
       sleep 3
       source "/home/inka/My data/courses/LinuxScripting/du6.sh"
       if [[ $result == "True" ]]
         then echo $message
	      exit 0
       else echo "Znova nespravny vysledok! Dalsi pokus o 60 sekund."		
	    sleep 6
	    source "/home/inka/My data/courses/LinuxScripting/du6.sh"
	    if [[ $result == "True" ]] 		
	      then echo $message
              exit 0	
            else echo "Poslal som tento text \"${message}\" tvojej zene, ty ozrate prasa!"
	    fi
       fi	
fi

