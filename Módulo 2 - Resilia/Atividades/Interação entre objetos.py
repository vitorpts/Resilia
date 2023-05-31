class Pessoas():
    def __init__(self):
        self.pessoas = [""]

class Casa():
    def __init__(self):
        self.rua = ""
        self.bairro = ""
        self.moradores = Pessoas()

class Faturas():
    def __init__(self):
        self.energia = []
        self.agua = []
        self.internet = []
        self.pagar = Pessoas()


pessoa = Pessoas()
pessoa.moradores = "João Vitor","Bruna"
pessoa.pagar = pessoa.moradores
pessoa.rua = "Rua Edmundo Antunes 2-57"
pessoa.bairro = "Jardim Panorama"

print(f"Os moradores dessa casa são: \n{pessoa.moradores[0]} e {pessoa.moradores[1]}")
print(f"\nRua - {pessoa.rua}\nBairro - {pessoa.bairro}\n")

pessoa.energia = float(input("Qual o valor da energia?:"))
pessoa.agua = float(input("Qual o valor da agua?:"))
pessoa.internet = float(input("Qual o valor da internet?:"))

print(f"\n{pessoa.moradores[0]} paga a conta de energia no valor de R${pessoa.energia} e agua no valor de R${pessoa.agua}\n\n{pessoa.moradores[1]} paga a conta de internet no valor de R${pessoa.internet}")