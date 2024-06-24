# Define a imagem base a partir da qual construir
FROM php:8.1-fpm

# Configuração do fuso horário para São Paulo
ENV TZ=America/Sao_Paulo

# Argumentos definidos no docker-compose.yml
ARG user
ARG uid

# Instalação de dependências do sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    build-essential \
    openssl \
    libssl-dev \
    git-core \
    python3 \
    gnupg \
    nano \
    bash

# Adiciona repositório do Node.js e instala a versão 16.x
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get -y install nodejs

# Limpa o cache e remove listas de pacotes
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala extensões PHP necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring exif pcntl bcmath gd

# Habilita a extensão pdo_mysql
RUN docker-php-ext-enable pdo_mysql

# Instala e habilita a extensão Xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Copia o binário do Composer para a imagem
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Cria um usuário do sistema para executar comandos Composer e Artisan
RUN useradd -G www-data,root -u $uid -d /home/$user $user

# Cria o diretório para configurações do Composer e ajusta permissões
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Define o diretório de trabalho
WORKDIR /var/www/html

# Copia o código fonte da aplicação para a imagem
COPY . /var/www/html

# Define o usuário padrão para execução dos comandos subsequentes
USER $user
