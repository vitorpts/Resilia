# Banco de dados

**Trabalho em Grupo Modulo 3, Resilia.**
 
## Squad 8

- Michael Bolchevique (Pessoa Co-facilitadora)<a href="https://www.linkedin.com/in/michaelbcleite/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">

- Fabiana Alves (Pessoa Gestora de Gente e Engajamento)<a href="https://www.linkedin.com/in/fabiana-alves-823333179/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">
        
- João Vitor Cunha Chinato (Pessoa Gestora de Conhecimento) <a href="https://www.linkedin.com/in/joao-vitor-cunha-chinato/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">

- Daniel Freitas (Pessoa Colaboradora) <a href="https://www.linkedin.com/in/daniel-freitas-aa0b5a175/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">



## Evidência de Entrega:

Desenvolvemos no PostgreSQL um banco de dados de uma escola para facilitar a organização e analise dos dados. Com ele podemos consultar a quantidade de estudantes, quantidade de estudantes por turma, quais são os cursos e até ter registros para rastreamento de alterações do status de um estudante.
Estamos satisfeitos com o resultado alcançado e confiantes de que nosso banco de dados será uma ferramenta útil e eficaz para a obtenção de informações e decisões importantes.

## Manual

Este manual de uso fornecerá instruções sobre como utilizar os scripts SQL fornecidos. Os scripts são divididos em duas partes: criação de tabelas e inserção de dados, e consultas específicas.

Parte 1: Criação de Tabelas e Inserção de Dados

    Abra seu ambiente de gerenciamento de banco de dados (por exemplo, pgAdmin, MySQL Workbench).

    Copie e cole o script de criação de tabelas e execute-o no ambiente de gerenciamento de banco de dados para criar as tabelas necessárias.

    Em seguida, copie e cole o script de inserção de dados para popular as tabelas criadas. Execute o script para inserir os dados nas tabelas.

Alternativamente, você pode povoar as tabelas ESTUDANTE, PESSOA_FACILITADORA e CURSO usando arquivos CSV. Para isso, siga as instruções a seguir:

    Certifique-se de ter os arquivos CSV necessários em um diretório acessível.

    No script SQL, localize as seções onde ocorre a inserção de dados a partir de arquivos CSV.

    Edite cada uma das consultas COPY para especificar o diretório correto onde os arquivos CSV estão localizados.

    Execute cada uma das consultas COPY para inserir os dados dos arquivos CSV nas tabelas correspondentes.

Parte 2: Consultas Específicas

    Abra o ambiente de gerenciamento de banco de dados.

    Copie e cole o script SQL com as consultas específicas no ambiente de gerenciamento de banco de dados.

    Execute cada uma das consultas para obter os resultados desejados. As consultas fornecidas são numeradas de acordo com as solicitações do trabalho em grupo.

Aqui está uma breve descrição do que cada consulta faz:

    Seleciona a quantidade total de estudantes cadastrados no banco.

    Seleciona quais pessoas facilitadoras atuam em mais de uma turma.

    Cria uma view que seleciona a porcentagem de estudantes com status de evasão agrupados por turma.

    Cria um trigger que é disparado quando o atributo de status de um estudante é atualizado e insere um novo dado em uma tabela de log.

    Obtém o nome do facilitador "soft" da turma 2, mostrando o módulo, nome dos alunos e o curso.

Certifique-se de executar cada consulta separadamente para obter os resultados desejados.
