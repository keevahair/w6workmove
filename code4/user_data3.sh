sudo apache install httpd -y apache2
sudo add #!/bin/bash
sudo groupadd cloudteam
sudo systemctl start apache2 
sudo systemctl enable apache2 
echo '<h1>this is deployed by kazmina </h1>' |sudo tee /var/www/html/index.html