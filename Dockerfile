#FROM library/php:5.6-apache
FROM openshift/php
MAINTAINER Veer Muchandi veer@redhat.com
COPY src/ /var/www/html/
COPY entrypoint /usr/bin/entrypoint
#RUN chmod +x /entrypoint
ENTRYPOINT ["entrypoint"]
Expose 80
