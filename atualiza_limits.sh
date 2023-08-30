#!/bin/bash

# Define os limites de recursos
CPUS="1"
MEMORY="768m"
MEMORY_SWAP="768m"

# Obtém a lista de IDs dos contêineres em execução
CONTAINER_IDS=$(docker ps -q)

# Loop através de cada contêiner e atualiza os recursos
for CONTAINER_ID in $CONTAINER_IDS
do
    echo "Atualizando contêiner $CONTAINER_ID..."
    
    # Atualiza os recursos (CPU, memória e memória de troca) do contêiner
    docker update --cpus="$CPUS" --memory="$MEMORY" --memory-swap="$MEMORY_SWAP" "$CONTAINER_ID"
    
    echo "Contêiner $CONTAINER_ID atualizado com sucesso."
done

echo "Todos os contêineres foram atualizados."
