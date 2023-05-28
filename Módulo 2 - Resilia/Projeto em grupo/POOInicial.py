#Importar função CSV
import csv
#Importar o horário do computador sendo executado o código
from datetime import datetime
#Nome e inicio do POO
class Pesquisa:
    def __init__(self):
        self.respostas = []
    #Função com listas com as perguntas e para receber as respostas
    def obter_respostas(self):
        perguntas = ["1- Pergunta: ", "2- Pergunta: ", "3-Pergunta: ", "4- Pergunta: "]
        respostas = []
        #Para coletar as respostas
        for pergunta in perguntas:
            resposta = input(pergunta + "(1 - Sim, 2 - Não, 3 - Não sei responder): ")
            respostas.append(resposta)

        return respostas
        #Modelo do arquivo CSV
    def salvar_resultados(self):
        arquivo_csv = "quemSabeFazAovivo.csv"

        with open(arquivo_csv, "w", newline="") as file:
            writer = csv.writer(file)
            writer.writerow(["Idade","Genero","Resposta 1","Resposta 2","Resposta 3","Resposta 4","Data e Hora"])

            for resposta in self.respostas:
                writer.writerow(resposta)
        #Print para saudação e resumo sobre a pesquisa para iniciar
        print("Pesquisa salva no banco de dados, muito obrigado(a)")
        #Função para iniciar a pesquisa
    def iniciar_pesquisa(self):
        print("Muito obrigado(a) por aceitar participar da nossa pesquisa!\n")
        #Laço de repetição da pesquisa
        while True:
            print("Para sair digite (00)\n\nPara informar o gênero que você se identifica digite\nM - Masculino\nF - Feminino\nN - Não binário\n")
            idade = input("Informe sua idade: ")
            if idade == "00":
                break

            genero = input("Informe seu gênero: ")
            if genero == "00":
                break
            respostas_participante = self.obter_respostas()
            data_hora = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

            # Adicionar as repostas à lista de respostas
            self.respostas.append([idade, genero] + respostas_participante + [data_hora])
        #Salvar os resultados
        self.salvar_resultados()