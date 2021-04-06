#/bin/sh
apt-get update && apt-get install -y \
        git \
        vim \
        wget \
        nano \
        zip \
        libzip-dev \
        unixodbc-dev \
        zlibc \
        zlib1g \
        libmemcached-dev \
        net-tools \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libaio1 \

apt-get install software-properties-common -y

pecl install sqlsrv-5.7.0preview
pecl install pdo_sqlsrv-5.7.0preview

echo "extension=pdo_sqlsrv.so" > /usr/local/etc/php/conf.d/pdo_sqlsrv.ini
echo "extension=sqlsrv.so" > /usr/local/etc/php/conf.d/sqlsrv.ini
