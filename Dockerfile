# Etapa 1: Use uma imagem base Python oficial e leve.
FROM python:3.13.4-alpine3.22

# Etapa 2: Defina o diretório de trabalho dentro do contêiner.
WORKDIR /app

# Etapa 3: Copie o arquivo de dependências primeiro para aproveitar o cache do Docker.
# A instalação das dependências só será executada novamente se o requirements.txt mudar.
COPY requirements.txt .

# Etapa 4: Instale as dependências.
# --no-cache-dir: Desabilita o cache do pip, reduzindo o tamanho da imagem.
# --upgrade pip: Garante que estamos usando a versão mais recente do pip.
RUN pip install --no-cache-dir --upgrade pip -r requirements.txt

# Etapa 5: Copie o restante do código da sua aplicação.
COPY . .

# Etapa 6: Exponha a porta em que o Uvicorn irá rodar.
EXPOSE 8000

# Etapa 7: Comando para iniciar a aplicação quando o contêiner for executado.
# --host 0.0.0.0 é essencial para que a aplicação seja acessível de fora do contêiner.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000",  "--reload"]