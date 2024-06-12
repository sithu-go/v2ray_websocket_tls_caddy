# If you use nginx and certbot
apt install certbot python2-certbot-nginx

# generate cetificate
certbot --nginx

# go to letsencryptbot folder
cd /etc/letsencrypt/live/your_domain.com

# make fullchain.pem into .crt file
cp /etc/letsencrypt/live/your_domain.com/fullchain.pem /etc/letsencrypt/live/your_domain.com/certificate.crt

# make privkey.pem into .key file
cp /etc/letsencrypt/live/your_domain.com/privkey.pem /etc/letsencrypt/live/your_domain.com/private.key

# Use those files for tls in v2ray docker-compose.yml