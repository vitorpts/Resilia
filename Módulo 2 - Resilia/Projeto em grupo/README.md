# Coletor de dados

**Trabalho em Grupo Modulo 2, Resilia.**
 
## Squad 10 

- Cristhian Monteiro (Pessoa Co-facilitadora)<a href="https://www.linkedin.com/in/cristhian-monteiro/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">

- Wedson Tavares (Pessoa Gestora de Gente e Engajamento)<a href="https://www.linkedin.com/in/wedson-tavares-0a7961261/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">
        
- Pâmela de Carvalho Sousa (Pessoa Gestora de Conhecimento) <a href="https://www.linkedin.com/in/p%C3%A2mela-carvalho-sousa-3aa928275">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">

- João Vitor Cunha Chinato (Pessoa Colaboradora 1) <a href="https://www.linkedin.com/in/joao-vitor-cunha-chinato/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">

- Thiago Bernardes Chechia (Pessoa Colaboradora 2) <a href="https://www.linkedin.com/in/thiagochechia/">
        <img src="https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin" alt="LinkedIn">



## Evidência de Entrega:

Desenvolvemos um coletor de dados utilizando a programação orientada a objetos em Python. Nosso código permite a coleta e armazenamento de informações como idade, gênero e respostas a quatro perguntas em um arquivo CSV.
Através dele, é possível coletar, armazenar e exportar informações de forma eficiente e organizada. Essa solução tem o potencial de ser utilizada em diferentes contextos onde a coleta de dados é necessária.
Estamos satisfeitos com o resultado alcançado e confiantes de que nosso coletor de dados será uma ferramenta útil e eficaz para a obtenção de informações importantes.

## Instalação:

Para a execução do programa é necessario baixar os dois arquivos contidos na Pasta "Código" em uma mesma pasta no seu terminal para que a importação de dados não seja comprometida.

## Uso:
Execute o arquivo "Main" na IDE de sua preferência.
Ao iniciar será solicitado sua idade a seguir gênero e as respostas para 4 perguntas, todas com as opções:

1. Sim
2. Não
3. Não sei responder

## Tratamento de entradas inválidas:
Caso você utilize qualquer caráter (letra, número ou simbolo) diferente dos apresentados anteriormente, você será informado que a opção é inválida e que deverá inserir uma das opções válidas. O código retornará para a pergunta que você estava, não sendo necessário reiniciar toda a pesquisa.

## Encerrando e gerando arquivo de saída:
Para encerrar a pesquisa é necessário que você digite 00 (zero, zero) na opção idade ou gênero.
Assim, será gerado o arquivo CSV com o nome "pesquisa_regulamentacao_aplicativo".

## Onde fica salvo o arquivo de saída?
O arquivo CSV irá ser salvo automáticamente na pasta que você colocou os 2 arquivos do código. Recomendamos que você crie uma nova pasta, coloque os 2 arquivos do código dentro e de um open folder nela no seu software de programação favorito, aqui nós usamos o VSCode.

## Bibliotecas: 

numpy==1.24.3

pandas==2.0.1

python-dateutil==2.8.2

pytz==2023.3

six==1.16.0

tzdata==2023.3
