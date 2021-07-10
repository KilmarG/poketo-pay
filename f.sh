cat ~/.ssh/poketo-pay.pub

ssh root@147.182.133.205

sudo mkdir -p /var/www/pay.poketo.link/html

sudo chown -R $USER:$USER /var/www/pay.poketo.link/html

sudo chmod -R 755 /var/www/pay.poketo.link

nano /var/www/pay.poketo.link/html/index.html

sudo nano /etc/nginx/sites-available/pay.poketo.link


