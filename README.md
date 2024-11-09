<img src="https://drive.google.com/uc?export=view&id=1si23fwTzsnL_9aZ1SCfCvrCDJ0YGCjlQ" width="1000">


# Conversor de Unidades

Este projeto é uma aplicação web simples desenvolvida em Python com Flask, que permite converter valores entre diferentes unidades de medida, como metros, quilômetros, milhas e pés. O projeto está configurado para ser executado em um contêiner Docker.

## Funcionalidades

- Conversão de unidades de medida entre:
  - Metros e Quilômetros
  - Quilômetros e Metros
  - Metros e Milhas
  - Milhas e Metros
  - Metros e Pés
  - Pés e Metros


## Tecnologias Utilizadas

- **Python** com o framework **Flask**.
- **Docker** para criar um ambiente isolado e replicável para a aplicação.
- **Gunicorn** para servir a aplicação em um ambiente de produção.

## Arquitetura

### Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação, que define as rotas e lógica de conversão de unidades.
- `templates/index.html`: Interface web da aplicação onde o usuário insere os valores e seleciona as unidades.
- `Dockerfile`: Define o ambiente Docker para a aplicação.

### Dockerfile

O `Dockerfile` utiliza uma imagem base de Python e instala as dependências necessárias para rodar a aplicação com o Flask e o Gunicorn. Ele expõe a aplicação na porta 5000 para que possa ser acessada externamente.

## Executando o Projeto

### Pré-requisitos

- Docker instalado em sua máquina.

### Instruções

1. Clone este repositório:
    ```bash
   git clone <URL do repositório>
   cd <nome-do-repositorio>
    ```

2. Clone este repositório:
    ```bash
   docker build -t conversor-unidades .
    ```

3. Clone este repositório:
    ```bash
   docker run -p 5000:5000 conversor-unidades
    ```


#### Acesse a aplicação em http://localhost:5000.


### Utilização
Na página inicial, insira o valor que deseja converter e selecione a unidade de entrada e de saída. A aplicação retornará o valor convertido e o exibirá na mesma página.

##### Exemplos de Conversão
Metro para Quilômetros: 1000 metros = 1 quilômetro
Quilômetros para Metro: 1 quilômetro = 1000 metros
Metro para Milhas: 1609.34 metros = 1 milha

### Contribuição
Sinta-se à vontade para abrir issues e pull requests para melhorias ou correções no projeto.

Dockerhub da imagem que buildei: https://hub.docker.com/r/dellabeneta/conversao-distancia

### Licença
Este projeto está licenciado sob a MIT License.