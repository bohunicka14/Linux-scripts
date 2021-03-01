#!/bin/bash

nazov=$1

echo "#!/bin/bash" >> $nazov  #ak dam > tak sa subor prepise, ak dam >> tak sa prida na koniec
#echo -e "#!/bin/bash\n#toto je druhy riadok" >> $nazov   #-e aby som mohla formatovat
#echo "#toto je druhy riadok" >> $nazov

cat >> $nazov << EOF
#toto je druhy riadok

#toto je riadok 4
	#toto je za tabom
echo 2
EOF

cat nazov_suboru_s_textom >> $nazov  #vlozi text zo suboru do noveho file

chmod +x $nazov
nano $nazov
