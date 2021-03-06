#!/bin/bash

if ! test -d "${DGtal}"; then
    echo "Environment variable DGtal is undefined."
    exit 1
fi

rsync -azv --delete --delete-after ${DGtal}/build/html/ dgtal@connect.liris.cnrs.fr:/home-projets/dgtal/public_html/doc/$1/
scp  ${DGtal}/build/DGtal-tagfile dgtal@connect.liris.cnrs.fr:/home-projets/dgtal/public_html/doc/nightly/tags
scp  ${DGtal}/build/Board-tagfile dgtal@connect.liris.cnrs.fr:/home-projets/dgtal/public_html/doc/nightly/tags

echo "--> done."
