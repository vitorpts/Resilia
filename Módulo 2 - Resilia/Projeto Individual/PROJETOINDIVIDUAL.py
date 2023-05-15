#Lista Candidatos

candidatos = [{"candidato":"João", "e":5, "t":10, "p":6, "s":8},
              {"candidato":"Vitor", "e":10, "t":7, "p":7, "s":8},
              {"candidato":"Cunha", "e":8, "t":5, "p":4, "s":9},
              {"candidato":"Chinato", "e":2, "t":2, "p":2, "s":1},
              {"candidato":"Bruna", "e":10, "t":10, "p":8, "s":9},]

#Criando a função

def busca(e,t,p,s):
    aprovados = []
    for candidato in candidatos:
        if (candidato["e"]>=e and candidato["t"]>=t and candidato["p"]>=p and candidato["s"]>=s):
            aprovados.append(candidato["candidato"])
    return aprovados

#Usando a função
print("Olá, busque no banco de dados de candidatos colocando as notas que você necessita")
e = int(input("Entrevista:"))
t = int(input("Teste Teórico:"))
p = int(input("Teste Prático:"))
s = int(input("Soft Skills:"))

aprovados = busca(e,t,p,s)

print(f"Notas inseridas: E={e} T={t} P={p} S={s}")

if len(aprovados)==0:
    print("Nenhum candidato compativel com as notas.")
else:
    for candidato in aprovados:
        print(candidato)