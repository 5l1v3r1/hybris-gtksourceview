#!/bin/bash

if [ "$(id -u)" != "0" ]; then
 echo "This script must be run as root" 1>&2
 exit 1
fi

cp hybris.xml /usr/share/mime/packages/
update-mime-database /usr/share/mime/
cp hybris.lang ~/.gnome2/gtksourceview-1.0/language-specs/
