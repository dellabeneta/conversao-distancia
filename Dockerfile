# Imagem base Python (escolhi slim pra economizar espaço)
FROM python:3.10.16-slim-bullseye

# Vou criar um usuário e grupo específico pra app, sem home directory pra não encher linguiça
RUN addgroup --system app && adduser --system --no-create-home --ingroup app app

# Aqui é onde vou jogar tudo da minha aplicação
WORKDIR /app

# Copio primeiro o requirements.txt porque assim, se mudar só o código, não preciso reinstalar tudo
COPY requirements.txt .

# Instalo as dependências como root (pra não dar problema de permissão)
RUN python -m pip install --no-cache-dir -r requirements.txt

# Agora copio todo o resto do código
COPY . .

# Passo a dono do diretório pro usuário app, senão ele não consegue mexer nos arquivos
RUN chown -R app:app /app

# Hora de parar de ser root! Vou virar o usuário app pra rodar a aplicação
USER app

# Só tô avisando que uso a porta 5000, mas quem libera mesmo é o -p no comando de rodar o container
EXPOSE 5000

# Comando que vai rodar quando o container subir (meu Gunicorn configurado)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]