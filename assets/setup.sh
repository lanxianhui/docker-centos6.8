#!/bin/bash



# Install myserver
mkdir -p /etc/myserver &&
mv /assets/myserver.conf /etc/myserver/myserver.conf &&

#mv /assets/myserver /etc/init.d/myserver &&
#chmod +x /etc/init.d/myserver &&
mv /assets/myserver_start.conf /etc/supervisord.d/myserver_start.conf &&

mv /assets/server /usr/local/bin/server &&
chmod +x /usr/local/bin/server &&


mv /assets/libev.so.4 /usr/lib64/libev.so.4 &&
chmod +x /usr/lib64/libev.so.4 &&

mv /assets/libmbedcrypto.so.0 /usr/lib64/libmbedcrypto.so.0 &&
chmod +x /usr/lib64/libmbedcrypto.so.0 &&

mv /assets/libsodium.so.18 /usr/lib/libsodium.so.18 &&
chmod +x /usr/lib/libsodium.so.18 &&

mv /assets/libudns.so.0 /usr/lib64/libudns.so.0 &&
chmod +x /usr/lib64/libudns.so.0 &&

ldconfig &&

mv /assets/tz.php /opt/app/public_html/tz.php &&
chown -R app:app-www /opt/app/public_html/tz.php 	&& 



# Install startup script for container
#mv /assets/startup.sh /usr/sbin/startup.sh &&
#chmod +x /usr/sbin/startup.sh &&

# Remove installation files
rm -r /assets/


exit $?
