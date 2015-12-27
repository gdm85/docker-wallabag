# docker-wallabag

Dockerfile used to build a [Wallabag](https://www.wallabag.org/) Docker image.

## Building

    cd image
    docker build -t docker-wallabag .

Check the [phusion/baseimage](https://github.com/phusion/baseimage-docker) documentation for all kind of options and switches.

## Database persistance

The [wallabag-docker](scripts/wallabag-docker) script enables persistance of the database outside of the container.
Modify the DBPATH variable at will, but keep an absolute path in order for things to work properly.

    ./scripts/wallabag-docker
    Usage: wallabag-docker {start|stop|status}
    
The default login credentials associated with the database are: `wallabag`/`wallabag`

It is mandatory to specify `SALT` when issuing a start command:

    SALT=34gAogagAigJaurgbqfdvqQergvqer ./scripts/wallabag-docker start

## Using ENV variable to pass SALT value in config file

You can specify a `--env WALLABAG_SALT=<insert salt value here>` in the docker run command in order to fix the salt value in the wallabag config file on container startup.
Example:

    sudo docker run -p 8080:80 -d --env WALLABAG_SALT=34gAogagAigJaurgbqfdvqQergvqer bobmaerten/docker-wallabag:latest /sbin/my_init

### SSH into the container

Please refer to the [Phusion documentation](https://github.com/phusion/baseimage-docker#login) to fetch the insecure-key used by default on the container started by the script.

## Testing wallabag dev version

The same script enable to "mount" a specific source directory instead of the one from the container.
Just uncomment le SOURCEPATH line, and set it to the absolut path of the wallabag source directory you want to use.
