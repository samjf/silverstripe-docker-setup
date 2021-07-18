# Building silverstripe docker image

Run a PHP container creating a volume to our `/src` directory.
```docker run --rm -p 8080:80 --name my-apache-php-app -v "$PWD/src":/var/www/html php:7-apache```