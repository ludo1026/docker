FROM apache

# --- docker build ---

# Add mod_proxy_ajp
RUN a2enmod proxy
RUN a2enmod proxy_ajp

# Add AJP in VirtualHost
ADD ajp.conf /etc/apache2/sites-available/ajp.conf
RUN chown www-data:www-data /etc/apache2/sites-available/ajp.conf
RUN a2ensite ajp

# Script de lancement
ADD run.sh /run.sh
RUN chmod +x /run.sh

# --- docker run ---

CMD ["/run.sh"]