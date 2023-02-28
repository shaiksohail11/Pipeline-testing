#!/bin/bash
sudo apt update -y
sudo apt install apache2 stress -y
sudo apt install php libapache2-mod-php php-mysql -y
echo '<?php phpinfo(); ?>' > /tmp/info.php
sudo cp /tmp/info.php /var/www/html/info.php
sudo systemctl restart apache2