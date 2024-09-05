# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /app
ENV FLASK_APP=run.py

# Copiar o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt requirements.txt

# Atualizar pip e listar pacotes instalados para depuração
RUN pip3 install --upgrade pip
RUN pip3 list

# Instalar as dependências do Python
RUN pip3 install -r requirements.txt

# Copiar todos os arquivos do diretório atual para o diretório de trabalho no container
COPY . .

# Definir o comando padrão para iniciar o aplicativo Flask
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
