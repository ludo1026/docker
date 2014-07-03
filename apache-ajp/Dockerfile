FROM apache

# --- docker build ---

# Add mod_proxy_ajp
RUN echo "LoadModule proxy_module modules/mod_proxy.so" | sudo tee -a /etc/apache2/apache2.conf
RUN echo "LoadModule proxy_module modules/mod_proxy_ajp.so" | sudo tee -a /etc/apache2/apache2.conf

# Add VirtualHost
ADD ajp.conf /etc/apache2/sites-available/ajp.conf
RUN chown www-data:www-data /etc/apache2/sites-available/ajp.conf

ADD run.sh /run.sh
RUN chmod +x /run.sh

# --- docker run ---

CMD ["/run.sh"]
