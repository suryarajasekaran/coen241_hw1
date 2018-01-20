FROM ubuntu:14.04
MAINTAINER Surya Rajasekaran "srajasekaran@scu.edu"

# ubuntu update
RUN apt-get update
RUN apt-get -y upgrade

# install lamp
RUN apt-get install lamp-server^ -y

# install curl
RUN apt-get install curl -y

# setup php page
RUN echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

# restart apache2 server
RUN service apache2 restart

# keep server running in foreground
CMD /usr/sbin/apache2ctl -D FOREGROUND
