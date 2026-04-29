#!/bin/bash
#Extract strings from config.ui to scriptname.pot
#

CONFIGFILE=../ui/config.ui
SCRIPTID=$(grep  \"Id\" ../../metadata.json | cut -d ":" -f2 | /usr/bin/sed -s 's/[\",]//g')
echo "Procesing $CONFIGFILE - $SCRIPTID"
extractrc $CONFIGFILE --language=Python | sed 's/i18n(/_(/g'  | xgettext -L Python - -o $SCRIPTID.pot
