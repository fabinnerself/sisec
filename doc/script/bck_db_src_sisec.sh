#!/bin/bash

fecha_bak_bd=bd_sisec_`date +"%Y%m%d%H%M%S"`.sql
cd /var/www/html/sisec/doc/BD/
rm *.sql

mysqldump -u root -p db_sisec --routines > /var/www/html/sisec/doc/BD/${fecha_bak_bd}

cd /var/www/html/

sudo zip -r /var/www/html/backup/src_sisec_`date +"%Y%m%d%H%M%S"`.zip sisec/

