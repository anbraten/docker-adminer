FROM adminer:latest

# install mongodb
USER root
RUN pecl install mongodb \
  && docker-php-ext-enable mongodb
USER adminer

# install hydra as default theme
# RUN mkdir -p designs/hydra && \
#  curl https://raw.githubusercontent.com/Niyko/Hydra-Dark-Theme-for-Adminer/master/adminer.css > designs/adminer.css
RUN curl https://raw.githubusercontent.com/Niyko/Hydra-Dark-Theme-for-Adminer/master/adminer.css > adminer.css
