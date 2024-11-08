# Usando uma imagem leve do Python baseada no Alpine
FROM python:3.9.20-alpine3.19

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar o arquivo de requisitos para o container
COPY requirements.txt .

# Instalar dependências do Python sem usar caches do Pip
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante da aplicação para o container
COPY . .

# Expor a porta 5000
EXPOSE 5000

# Definir o comando para rodar a aplicação
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
