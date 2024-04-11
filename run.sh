echo "[smtp.mailgun.org]:2525   $User:$Pass" > /etc/postfix/sasl_passwd
postmap /etc/postfix/sasl_passwd
chown root:root /etc/postfix/sasl_passwd
chown root:root /etc/postfix/sasl_passwd.lmdb
chmod 600 /etc/postfix/sasl_passwd
chmod 600 /etc/postfix/sasl_passwd.lmdb
sed -i "s~#mydomain = domain.tld~mydomain = $Domain~g" /etc/postfix/main.cf
postfix start-fg