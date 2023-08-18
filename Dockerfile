FROM nextcloud
ENV MYSQL_PASSWORD=W7xryrfs92 MYSQL_DATABASE=nextcloud MYSQL_USER=nextcloud MYSQL_HOST=db
VOLUME nextcloud:/var/www/html
FROM mariadb
CMD [“--transaction-isolation=READ-COMMITTED --log-bin=binlog --binlog-format=ROW”]
VOLUME db:/var/lib/mysql
ENV MYSQL_ROOT_PASSWORD=W7xryrfs92 MYSQL_PASSWORD=W7xryrfs92 MYSQL_DATABASE=nextcloud MYSQL_USER=nextcloud
