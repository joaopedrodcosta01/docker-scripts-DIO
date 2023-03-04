# Scripts do Projeto: Docker: Utilização Prática no Cenário de Microsserviços
---------------------------------------------------------------------------------------------------------------------------------------------------------
> Este projeto tem como base o projeto *Docker: Utilização Prática no Cenário de Microsserviços* apresentado pelo **Denilson Bonatti** na **DIO**. Esses scripts foram pensados e usados para ser usados em servidores em máquinas virtuais (De preferência em ambientes de estudos).

Caso tenham curiosidade e queiram usar esses scripts para ajudar no passo a passo, fiquem **atentos** aos mínimos detalhes, como IPs, arquivos de configurações, entre outros... Ao longo do caminho esses scripts vão falando quando é necessário editar arquivos. Fiquem a vontade para mudá-lo e melhorar, sugestões e mudanças estão sempre abertas 😀.
## Ordem
1. Instalação do Docker nos servidores
2. Criação de Container (MySQL)
3. Importação de tabela para o BD (Fique atento ao comentário dentro do arquivo)
4. Configuração do servidor web no servidor principal
5. Montando o Cluster com o `docker swarm`
6. Organização dos cluster's em serviços
7. Configuração para o Servidor Principal mandar os arquivos para o cluster (NFS)
8. Configuração para os clusters receberem os arquivos (NFS)
9. Criação de diretórios para o proxy e sua configuração (Fique atento aos arquivos de configurações, dê uma olhada e mude os IP's)
10. Build do Proxy (Em funcionamento) | Fim
-----------------------------------------------------------------------------------------------------
![Ubuntu Server](https://img.shields.io/badge/Ubuntu%20Server-22.04-orange)
![Follow](https://img.shields.io/badge/Github-Follow-BLACk)