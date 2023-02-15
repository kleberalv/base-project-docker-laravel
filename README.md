# Projeto base de laravel com docker

Projeto base para estudos ou fins profissionais. Feitos em laravel e Docker. 
O intuito é disponibilizar para quaisquer pessoas que queiram usufruir.


# Instruções

1.	Projeto base para estudos ou fins profissionais. Feitos em laravel e Docker;
2.	O intuito é disponibilizar para quaisquer pessoas que queiram usufruir;
3.	Clone o repositório no local de sua escolha;
4.	Dentro da pasta Docker/php você encontrará o PHP 8 zipado e já configurado;
5.	O php deverá ser descompactado dentro de C:/ e deverá ser configurado as variáveis de ambiente no windows;
6.	Em sua máquina deverá ter o Docker instalado;
7.	Em sua máquina deverá ter o node.js instalado;
8.	Em sua máquina deverá ter o composer instalado;
9.	Após essas configurações, verifique o arquivo docker-compose.yml e o adapte da forma que achar melhor;
10.	Se você for utilizar o Laravel para API, caso deseje, poderá dentro do docker-compose.yml colocar o caminho do front-end para que o mesmo suba junto com o container (código comentado);
11.	Lembre-se de definir os usuários e senhas do banco de dados, substituindo os que estão de exemplo no arquivo docker-compose.yml;
12.	Lembre-se de adaptar conforme seu desejo as portas em docker-compose.yml;
13. Em Docker/xdebug.ini deverá ser incluido o endereço IP do ambiente;
14. Em .gitignore, percebe-se que "database" está incluido por motivos de segurança. Ao criar seu banco, o exporte (caso vá para produção) e não o mantenha no código;
15. Na raiz do projeto existe um arquivo chamado exempleLaunch.json, que deve ser utilizado como base para o xdebug (.vscode/launch.json). Configure-o da forma que desejar;
16.	Para subir os containers, no terminal, digite: docker compose up -d.


# Ferramentas utilizadas

1.	PHP 8.1.16
2.	Docker
3.	Compose
4.	Xdebug
5.	mariaDB
6.	PhpMyAdmin
7.	Nginx
8.	Node.js

# Autorizações

Eu, Kleber Alves Bezerra Junior, autorizo essa aplicação ser clonada e utilizada para quaisquer fins.

# Contato

1. kleberjuniorr63@gmail.com
2. https://www.linkedin.com/in/kleberalv/

# Doações

1. Chave pix: b96488dd-a3fd-4318-9bb2-62c5eeb19ea3

# Copyright ©
Copyright © Developed by: Kleber Alves Bezerera Junior - Sênior Developer 2023.