# Portais Corporativos

Este é o projeto de Portais Corporativos em docker que possibilita a publicação quase imediata de um portal. O container carrega um modelo padronizado, podendo o órgão realizar de forma prática as customizações necessárias da entidade.

## Conteúdo

+ O Dockerfile para geração de imagem padrão do container;
+ Arquivo docker-compose.yml do portal;
+ Dump para primeiro deploy da base de dados;
+ Arquivo `uploads.ini` com valores customizados;

## Instruções

### Criar um novo portal

Para criar um novo portal, siga as orientações da documentação abaixo:

+ [WIKI-SEAD](http://wiki-sead.ac.gov.br/books/portais-governamentais/page/levantar-um-portal) - Levantar um portal por linha de comando ou pelo Portainer

### Subindo o ambiente em um novo servidor 

Caso necessário instalar um novo servidor, clonar o projeto no host destino:

```
git clone https://git.ac.gov.br/governoAcre/sead/portais_corporativos.git /opt/portais_corporativos

```
Para subir o Portal Modelo, execute os seguintes comandos:

```
git clone https://git.ac.gov.br/governoAcre/sead/portais_corporativos.git /opt/portais/
cd /opt/portais
docker-compose up -d


```
Para subir um portal institucional, altere as variáveis do arquivo .env

```
cd /opt/portais_corporativos/
vi .env
docker-compose up -d

```