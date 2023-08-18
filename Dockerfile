FROM nextcloud
ENV MYSQL_PASSWORD=W7xryrfs92 MYSQL_DATABASE=nextcloud MYSQL_USER=nextcloud MYSQL_HOST=localhost:3306
VOLUME nextcloud:/var/www/html
