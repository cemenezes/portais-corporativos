# Portais Corporativos

Este é o projeto de Portais Corporativos em docker que possibilita a publicação quase imediata de um portal. O container carrega um modelo padronizado, podendo o órgão realizar de forma prática as customizações necessárias da entidade.

## Conteúdo

+ O Dockerfile para geração de imagem padrão do container;
+ Arquivo docker-compose.yml do portal;
+ Dump para primeiro deploy da base de dados;
+ Arquivo `uploads.ini` com valores customizados;

## Instruções

<details>
 <summary>Gerar Imagem do Wordpress</summary>

A partir de um novo modelo definido, copiar pasta `wordpress_files` para o diretório onde será gerada a nova imagem:

```
cp -Rf /srv/modelo.ac.gov.br/wordpress_files/ /opt/build/wordpress/

```
Gerar a nova imagem:

```
docker build -t sead/portais:1.x /opt/build/wordpress/

```

</details>
