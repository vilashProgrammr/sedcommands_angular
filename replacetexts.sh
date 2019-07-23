#!/usr/bin/env bash
sed -i 's|"ng serve"|"ng serve --public-host=0.0.0.0/'${CONTAINERPATH}'_op/sockjs-node --host 0.0.0.0 --port 4200 --disable-host-check"|g' /home/project/$PROJECTDIR/package.json
sed -i 's|base href="/"|base href=""|g' /home/project/$PROJECTDIR/src/index.html
