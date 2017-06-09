# docker-nginx-php-fpm

A nginx-alpine based docker image that connects with a php-fpm-container and runs a front controller

## Configuration

You can configure this image with the following environment variables

| Env              | Description              | Example       |        
| -----------------|:------------------------:|:-------------:|
| PHP_FPM_HOST     | Host                     | 10.0.2.3      |
| PHP_FPM_PORT     | Port                     | 9000          |
| DOCUMENT_ROOT    | Document root in php-fpm | /var/www/     |
| FRONT_CONTROLLER | Front controller script  | index.php     |
