# Building silverstripe docker image

Build our custom image:

```docker build -t php-ss-env .```

Run a PHP container creating a volume to our `/src` directory.
```docker run -d -p 8080:80 --name my-apache-php-app -v "$PWD/src":/var/www/html php-ss-env```

Get a shell in the container:
```docker exec -it my-apache-php-app bash```

Run composer. Make a project in current directory (/var/www/html)
```composer create-project silverstripe/installer ./```