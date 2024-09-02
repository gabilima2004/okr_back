# okr_back

## Iniciando o projeto nest

`$ nest new nome-do-projeto`

## Utilizando o Docker (engine)

### Requisitos

- [Docker](https://www.docker.com/get-started) instalado

### Estrutura do Projeto

- `Dockerfile`: Arquivo de configuração para construir a imagem Docker.
- `.dockerignore`: Arquivo para ignorar arquivos e diretórios desnecessários na imagem Docker.

### Construir a Imagem Docker

Para construir a imagem Docker, execute o seguinte comando no diretório raiz do projeto:

`docker build -t minha-imagem-nestjs .`

### Construir um container Docker

Depois de construir a imagem, você pode iniciar um container a partir dela com o comando:

`docker run -p 3000:3000 --name meu-container-nestjs minha-imagem-nestjs`

 -p 3000:3000 mapeia a porta 3000 do container para a porta 3000 da sua máquina local.
 --name meu-container-nestjs define um nome para o container.
 minha-imagem-nestjs é o nome da imagem que você criou.

### Verificar o status do container

`docker ps`

### Acessar a aplicação

Coloque no navegador http://localhost:3000

### Parar a execução do container

`docker stop meu-container-nestjs`

