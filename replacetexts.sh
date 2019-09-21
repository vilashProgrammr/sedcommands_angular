#!/usr/bin/env bash
# use this if using reverse proxy: sed -i 's|"ng serve|"ng serve   --poll=2000  --public-host=0.0.0.0/'${CONTAINERPATH}'_op/sockjs-node --host 0.0.0.0 --port 4200 --disable-host-check|g' /home/project/$PROJECTDIR/package.json
sed -i 's|"ng serve"|"ng serve   --poll=2000  --host 0.0.0.0 --port 4200 --disable-host-check"|g' /home/project/$PROJECTDIR/package.json
sed -i 's|"react-scripts start"|"PORT=4200 HOST=0.0.0.0 react-scripts start"|g' /home/project/$PROJECTDIR/package.json

# uncomment if using reverse proxy: sed -i 's|base href="/"|base href="/'${CONTAINERPATH}'_op/"|g' /home/project/$PROJECTDIR/src/index.html
sed -i 's|src="./bundle.js"|src="http://d9n2pyny5ybdw.cloudfront.net/testimages/bundle.js"|g' /home/theia/lib/index.html
#wget -q -O - http://www.skillstack.com/api/onlinetests/getconfig?testid=$TESTID > /home/project/$PROJECTDIR/.pmainfile
echo '{"mainfile":"src/index.html","terminalcommand":"npm start"}' > /home/project/$PROJECTDIR/.pmainfile


