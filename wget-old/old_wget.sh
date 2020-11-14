#!/bin/bash

ILIAS_USER="user"
ILIAS_PASS="pass"

refs=(
    683143
    1140868
)

names=(
    AM
    SM
)

for index in ${!refs[*]}; do 
    wget -r -nH -nc -np --cut-dirs=1 -R "index.html*" -R "*mount*" --no-check-certificate -U Mozilla --restrict-file-names=nocontrol --user=$ILIAS_USER --password=$ILIAS_PASS https://ilias.th-koeln.de/webdav.php/ILIAS_FH_Koeln/ref_${refs[$index]}/
done