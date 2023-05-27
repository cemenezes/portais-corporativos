# Portais Corporativos

Este é o projeto de Portais Corporativos em docker que possibilita a publicação quase imediata de um portal. O container carrega um modelo padronizado, podendo o órgão realizar de forma prática as customizações necessárias da entidade.

## Conteúdo

+ O Dockerfile para geração de imagem padrão do container;
+ Arquivo docker-compose.yml do portal;
+ Dump para primeiro deploy da base de dados;
+ Arquivo `uploads.ini` com valores customizados;

## Instruções

<details>
 <summary>Subindo o ambiente em um novo servidor</summary>

Caso necessário instalar um novo servidor, clonar o projeto no host destino:

```
git clone https://git.ac.gov.br/governoAcre/sead/portais_corporativos.git /opt/portais_corporativos

```
Copiar a imagem e importar a imagem do portal:

```
scp root@10.1.5.126:/opt/portais_1.2.tar /opt/
docker load --input /opt/portais_1.2.tar
Docker tag portais:1.2

```

Copie o dump do banco de dados para a pasta `/opt/build/dump`

```
cp /opt/portais_corporativos/dump/wordpress.sql /opt/build/dump

```
Altere os parametros do arquivo `.env` de forma adequada ao seu ambiente e suba o portal:

```
cd /opt/portais_corporativos
docker-compose up -d

```

</details>

<details>
 <summary>Preparando a imagem</summary>

A partir de um novo modelo definido, copiar pasta `wordpress_files` para o diretório onde será gerada a nova imagem:

```
cp -Rf /srv/modelo.ac.gov.br/wordpress_files/ /opt/build/wordpress/

```
Gerar a nova imagem:

```
docker build -t sead/portais:1.x /opt/build/wordpress/

```

Faça um dump do banco de dados e copie para a pasta do dump definida:

```
docker exec NOMEDOCONTAINER sh -c 'mysqldump -uroot -pSENHA wordpress > /opt/wordpress.sql'
docker cp NOMEDOCONTAINER:/opt/wordpress.sql /opt/build/dump/

```


</details>