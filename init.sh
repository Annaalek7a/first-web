sudo pip install --upgrade django==1.9.4
sudo pip install --upgrade gunicorn==19.4.5

sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
cd /home/box/web/
gunicorn hello:app --bind 0.0.0.0:8080 &
