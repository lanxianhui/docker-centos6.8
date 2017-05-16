#!/bin/bash



# Install myserver
mkdir -p /etc/myserver &&
mv /assets/myserver.conf /etc/myserver/myserver.conf &&

#mv /assets/myserver /etc/init.d/myserver &&
#chmod +x /etc/init.d/myserver &&
mv /assets/myserver_start.conf /etc/supervisord.d/myserver_start.conf &&

mv /assets/server /usr/local/bin/server &&
chmod +x /usr/local/bin/server &&


mv /assets/libc.so.6 /usr/local/lib/libc.so.6 &&
chmod +x /usr/local/lib/libc.so.6 &&

mv /assets/libev.so.4 /usr/local/lib/libev.so.4 &&
chmod +x /usr/local/lib/libev.so.4 &&

mv /assets/libm.so.6 /usr/local/lib/libm.so.6 &&
chmod +x /usr/local/lib/libm.so.6 &&

mv /assets/libmbedcrypto.so.0 /usr/local/lib/libmbedcrypto.so.0 &&
chmod +x /usr/local/lib/libmbedcrypto.so.0 &&

mv /assets/libpcre.so.3 /usr/local/lib/libpcre.so.3 &&
chmod +x /usr/local/lib/libpcre.so.3 &&

mv /assets/libpthread.so.0 /usr/local/lib/libpthread.so.0 &&
chmod +x /usr/local/lib/libpthread.so.0 &&

mv /assets/libsodium.so.18 /usr/local/lib/libsodium.so.18 &&
chmod +x /usr/local/lib/libsodium.so.18 &&

mv /assets/libudns.so.0 /usr/local/lib/libudns.so.0 &&
chmod +x /usr/local/lib/libudns.so.0 &&

ldconfig &&


# Install startup script for container
mv /assets/startup.sh /usr/sbin/startup.sh &&
chmod +x /usr/sbin/startup.sh &&

# Remove installation files
rm -r /assets/


exit $?
