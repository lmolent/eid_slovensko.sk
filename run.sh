#!/bin/bash

mkdir -p /root/.config/EAC_MW_klient/
echo -e '[General]\nEACMWKlientAutoStartFlag=False' > /root/.config/EAC_MW_klient/EAC_MW_klient.ini

if [ -f /root/.ditec/dlauncher-bin/dLauncher ]; then
	/root/.ditec/dlauncher-bin/dLauncher -s &
else
	/tmp/DLauncher.linux.x86_64.run
fi

pcscd -i --force-reader-polling
/usr/bin/EAC_MW_klient &
/usr/bin/firefox https://www.slovensko.sk

