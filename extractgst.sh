#!/bin/sh
gs="/usr/share/gnome-shell/gnome-shell-theme.gresource"
for r in `gresource list $gs`; do
    gresource extract $gs $r > ${r/#\/org\/gnome\/shell\/theme/.}
done
