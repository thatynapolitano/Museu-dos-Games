# Projeto Museu dos Games 
Este projeto tem como objetivo desenvolver o banco de dados de um site documental de jogos antigos chamado "Museu dos Games". O projeto envolve as seguintes entregas:

- Modelo Conceitual (Entidade-Relacionamento):
  - Inclui entidades, atributos, relacionamentos e cardinalidades.
  - Realizado no no Draw.io
  - Disponível em formato: .png
 
  ![Diagrama ERD - Thatiana Napolitano](https://github.com/user-attachments/assets/47ffcdf8-55c4-4f47-888d-aa7ce740d692)

- Modelo Lógico (Relacional):
  - Normalizado com inclusão de chaves primárias e estrangeiras.
  - Disponível em formato: .png 

- Comandos SQL:
  - Quatro comandos SQL para operações específicas com base na regra de negócio.
  - Disponíveis em formatos:.sql e .txt.
    
- Banco de Dados Exportado:
  - Contém dados de teste e está no formato padrão do MySQL Workbench (.sql).
 
O banco de dados foi modelado para atender às funcionalidades de visualização, busca e administração de informações dos jogos. As principais telas e ações disponíveis no site são descritas a seguir. 

![Diagrama EER - Thatiana Napolitano](https://github.com/user-attachments/assets/74039ca0-fe5a-4b33-9203-b1f3a2e800a9)

## Funcionalidades do Site
### Visualização Geral dos Jogos:

### Exibição de uma lista com todos os jogos cadastrados.
- Barra de pesquisa para filtrar jogos pela informação desejada (nome, descrição, data de lançamento, etc.).
  
## Detalhes Individuais dos Jogos:
### Exibição de informações detalhadas de cada jogo, incluindo:
- Nome, imagem da capa, descrição, plataformas, desenvolvedores, publicadoras, franquia, data de lançamento, tags de gênero, número de jogadores, classificação etária, imagens de gameplay.

### Tela Administrativa:
- Cadastro, atualização e exclusão de jogos, com os seguintes campos:
  - Nome, imagem da capa, descrição, plataformas, desenvolvedores, publicadoras, franquia, data de lançamento, tags de gênero, número de jogadores, classificação etária, imagens de gameplay.

## Ações do Usuário:
1. Filtrar jogos na tela de listagem com base em qualquer dado do jogo (nome, descrição, data de lançamento, etc.).
2. Incluir um novo jogo a partir da tela administrativa.
3. Atualizar as informações de um jogo já cadastrado.
4. Remover um jogo cadastrado anteriormente.
