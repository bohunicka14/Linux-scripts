#!/bin/bash
/*
Vieš o tom že existujú aplikácie, ktoré ti zabránia poslať SMS v určitom čase, skôr než vyriešiš nejakú matematickú hádanku? Napríklad v čase od 22:00 do 6:00. Prečo? Lebo je veľká pravdepodobnosť, že budeš pod parou, a na druhý deň by si to mohol ľutovať. Tak teraz sprav niečo podobné a teda, urob script ktorý by mal po spustení poslať nejakú správu. Tú správu user naťuká na vyzvanie. Ale odoslanie sme ešte nepreberali, takže zatiaľ stačí keď tam bude echo s tou správou. Lenže, skôr než to odošleš, tak zisti aký je deň a čas. A ak je piatok alebo sobota v čase od 22:00 do 6:00, tak najskôr zobraz userovi nejakú matematickú hádanku. Napríklad 124*543 (:-D, alebo niečo ľahšie). Ak to vypočíta správne, tak úlohu splnil a možeš poslať správu (teda zobraziť echo). Ak to nevypočíta správne, tak vypíš, že ďalší príklad sa mu zobrazí o 30 sekúnd. Ak ani to nevypočíta správne, ďalší pokus bude mať o 60 sekúnd s tým, že ak ani potom to nevypočíta správne, tak vypíš: "Poslal  som tento text tvojej žene, ty ožraté prasa". A ozaj, tie príklady nech sú random. Preto tá DÚ pred touto. Môže to byť stále sčítavanie, alebo násobilka, len tie čísla nech sú náhodné.

Takže čo potrebuješ? Zistiť a porovnať dátumy. Zistiť vstup od usera pre text správy. Vypísať nejaké príklady a porovnať s očakávaným výsledkom. Nastaviť sleep, if a ďalší read kvôli získaniu výsledku.
*/

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

