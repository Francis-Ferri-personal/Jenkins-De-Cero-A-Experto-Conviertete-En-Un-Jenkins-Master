FROM remote-host

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN                                                                          \
  yum -y install nginx openssl --enablerepo=nginx                  && \
  yum install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm  && yum update -y        && \
  yum -y install                                                             \
    php-fpm                                                               \
    php-cli                                                               \
    php-mysqlnd                                                           \
    php-soap                                                              \
    php-xml                                                               \
    php-zip                                                               \
    php-json                                                              \
    php-mbstring                                                          \
    php-zip                                                               \
    php-gd

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

RUN setfacl -R -m u:remote_user:rwx /var/www/html

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh

