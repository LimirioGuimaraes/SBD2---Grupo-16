FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Torna o entrypoint executável
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Define o script como o Entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]


COPY ./silver /app
