# Projeto Base Laravel + Docker: Infraestrutura para Desenvolvimento e Implantação
Projeto base feito com laravel e docker.

## Descrição
O Projeto Base Laravel + Docker é uma estrutura robusta para o desenvolvimento e implantação eficiente de aplicativos web baseados em Laravel. Combinando a flexibilidade do framework Laravel e a portabilidade do Docker, este projeto oferece uma solução abrangente para criar, testar e implantar aplicativos de forma coesa e organizada.

Aqui está uma visão detalhada de cada contêiner:

1. app:

Este contêiner é responsável por hospedar a aplicação principal desenvolvida em PHP. Ele é construído a partir de um Dockerfile personalizado que foi configurado para operar em conjunto com o servidor PHP. O uso do Xdebug facilita as atividades de desenvolvimento e depuração, tornando o processo mais eficiente.

2. db:

O contêiner MariaDB é dedicado ao armazenamento dos dados do aplicativo. Ele oferece um ambiente seguro para a persistência de informações cruciais, como tabelas e registros. A presença desse contêiner é fundamental para garantir o funcionamento correto e a integridade dos dados.

3. phpmyadmin:

Este contêiner hospeda uma interface web do phpMyAdmin, uma ferramenta de administração de banco de dados. Através dele, é possível interagir com o banco de dados MariaDB de maneira intuitiva e conveniente, facilitando tarefas administrativas e manipulação de dados.

4. nginx:

Atuando como servidor web, o contêiner Nginx direciona as solicitações HTTP para a aplicação PHP. Além disso, ele proporciona uma camada extra de segurança e otimização de desempenho, contribuindo para uma experiência de usuário mais eficiente e segura.

## Licença

Este projeto é licenciado sob a [Licença MIT](LICENSE). Consulte o arquivo [LICENSE](LICENSE) para obter mais detalhes.

### Responsabilidade

O autor deste projeto não assume nenhuma responsabilidade pelo uso indevido ou violação dos termos de licença. Você é o único responsável por garantir o uso adequado e ético deste código-fonte.

### Isenção de Garantia

Este projeto é fornecido "no estado em que se encontra", sem garantias de qualquer tipo. O autor não se responsabiliza por quaisquer danos ou consequências decorrentes do uso deste software.

## Instruções

Siga as etapas abaixo para configurar e executar o projeto:

1. Clone o repositórios base-project-docker-laravel em seu sistema.

2. Abra um terminal e navegue até o diretório base-project-docker-laravel.

3. Copie os dados do arquivo .env.example, crie um arquivo na raiz do projeto chamado .env e cole dentro dele os dados presentes em .env.example.

4. Execute o seguinte comando para construir e iniciar os contêineres:
`docker-compose up -d --build`

5. Após o download e a criação dos contêineres, acesse o contêiner app através do terminal:
`docker exec -it apllication-server-app /bin/bash`

6. Dentro do contêiner app, execute o seguinte comando:
`composer install`

7. Agora, você pode acessar o projeto em seu navegador através do link: http://localhost:8080/.

## Tecnologias utilizadas
<div align="left">
    <img align="center" alt="PHP" src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white">
    <img align="center" alt="Laravel" src="https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white">
    <img align="center" alt="Xdebug" src="https://img.shields.io/badge/Xdebug-DB1F29?style=for-the-badge&logo=xdebug&logoColor=white">
</div>

## Ferramentas de desenvolvimento utilizadas
<div align="left">
    <img align="center" alt="Docker" src="https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white"> 
    <img align="center" alt="Git" src="https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white"> 
    <img align="center" alt="Composer" src="https://img.shields.io/badge/Composer-885630?style=for-the-badge&logo=composer&logoColor=white">
    <img align="center" alt="MariaDB" src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white">
    <img align="center" alt="phpMyAdmin" src="https://img.shields.io/badge/phpMyAdmin-4479A1?style=for-the-badge&logo=phpmyadmin&logoColor=white">
</div>

# Copyright ©
Copyright © Developed by: Kleber Alves Bezerera Junior - Sênior Developer 2022.

# Contato

1. kleberjuniorr63@gmail.com
2. https://www.linkedin.com/in/kleberalv/

# Doações

1. Chave pix: b96488dd-a3fd-4318-9bb2-62c5eeb19ea3

# Copyright ©
Copyright © Developed by: Kleber Alves Bezerera Junior - Sênior Developer 2023.