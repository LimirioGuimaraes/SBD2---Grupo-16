#!/bin/bash
set -e


FLAG_FILE="/var/lib/postgresql/data/etl_completed.flag"

if [ -f "$FLAG_FILE" ]; then
    echo "Sinalizador encontrado: ETL já foi executado. Encerrando o contêiner."
    exit 0
fi

echo "Iniciando a execução do ETL..."

jupyter nbconvert --to notebook --execute etl_pipeline.ipynb --inplace --allow-errors

touch "$FLAG_FILE"

echo "ETL concluído com sucesso e sinalizador criado."