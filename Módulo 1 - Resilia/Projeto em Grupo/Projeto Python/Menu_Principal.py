from Biblioteca import *

#Mensagem inicial
boas_Vindas=input('Qual é seu nome ?')
boas_Vindas=("Bem vindo(a) a Central de informações virtuais da Lan Arena, " + boas_Vindas + ".")
print(boas_Vindas)
print(' Em que podemos te ajudar? ')
#loop MENU principal
while True:
    
    #Primeiras opções
    print("\n*MENU PRINCIPAL*\n1- Opções de Jogos:\n2- Preços da hora:\n3- Nossas redes sociais:\n4- Sair :(\n") 
    opcao = input("\nQual opção desejada?: ")

    if opcao == "1":
    #Opções de Jogos
        while True:
            print("\n1-Jogos para PC:\n2-Jogos para PS5:\n3-Jogos para XBOX ONE S:\n4-Voltar ao Menu Principal.\n")
            opcao1 = input("\nVocê escolheu Opções de Jogos. Qual plataforma desejada?: ")
            
            if opcao1 == "1":
            #Opções de Jogos para PC
                while True:
                    print("\n1-League of Legends:\n2-Valorant:\n3-CS GO:\n4-Point Blank:\n5-Priston Tale:\n6-Hogwarts Legacy:\n7-Voltar ao Menu Anterior.\n")
                    
                    #Informações dos jogos para PC
                    opcao1 = input ('\nVoce escolheu Jogos para PC. Qual jogo você deseja obter mais informações? ')
                    if opcao1 =="1":
                        (lol())
                        break
                    elif opcao1 =="2":
                        (valorant())
                        break
                    elif opcao1 =="3":
                        (csgo())
                        break
                    elif opcao1 =="4":
                        (point())
                        break
                    elif opcao1 =="5":
                        (priston())
                        break
                    elif opcao1 =="6":
                        (hogwarts())
                        break
                    elif opcao1=="7":
                        break
                    else:
                        print("\nOpção Inválida! Tente novamente...\n")
                        continue   
            
            elif opcao1 == "2":
            #Jogos para PS5
                while True:
                    print("\n1-Fifa 23\n2-Forza Horizon 5\n3-Red Dead Redemption 2\n4-God of War Ragnarok\n5-Voltar ao Menu Anterior.\n")
                    
                    #Informações dos jogos para PS5
                    opcao1 = input ('\nVoce escolheu Jogos para PS5. Qual jogo você deseja obter mais informações? ')
                    if opcao1 =="1":
                        (fifa())
                        break
                    elif opcao1 =="2":
                        (forza())
                        break
                    elif opcao1 =="3":
                        (red())
                        break
                    elif opcao1 =="4":
                        (god())
                        break
                    elif opcao1=="5":
                        break
                    else:
                        print("\nOpção Inválida! Tente novamente...\n")
                        continue
            
            elif opcao1 == "3":
            #Jogos para XBOX ONE S
                while True:
                    print("\n1-eFootball 23\n2-Ryse: Son of Rome\n3-Gears 5\n4-Halo 5: Guardians\n5-Voltar ao Menu Anterior.\n")
                    
                    #Informações dos jogos para XBOX ONE S
                    opcao1 = input ('\nVoce escolheu Jogos para XBOX ONE S. Qual jogo você deseja obter mais informações? ')
                    if opcao1 =="1":
                        (efoot())
                        break
                    elif opcao1 =="2":
                        (ryse())
                        break
                    elif opcao1 =="3":
                        (gears())
                        break
                    elif opcao1 =="4":
                        (halo())
                        break
                    elif opcao1=="5":
                        break
                    else:
                        print("\nOpção Inválida! Tente novamente...\n")
                        continue
                    
            #Opção Voltar       
            elif opcao1 == "4":
                break
            else:
                print("\nOpção Inválida! Tente novamente...")
                continue
            
    elif opcao == "2":
    #Opções de Preço
        while True:
            print("\n1-Preço da hora para PC:\n2-Preço da hora para PS5:\n3-Preço da hora para XBOX ONE S:\n4-Voltar ao Menu Principal.\n")   
            opcao1 = input("\nVocê escolheu Preço da Hora. Qual plataforma desejada?: ")
        
            if opcao1 == "1":
                (preço_pc())
                break
            elif opcao1 == "2":
                (preço_ps())
                break
            elif opcao1 == "3":
                (preço_xbox())
                break
            #Voltar
            elif opcao1 == "4":
                break
            else:
                print("\nOpção Inválida! Tente novamente...\n")
                continue
    
    elif opcao == "3":
    #Opções de Redes Sociais
        while True:
            print("\n1-Facebook:\n2-Instagram:\n3-Youtube:\n4-WhatsApp:\n5-Voltar ao Menu Principal.\n")
            opcao1 = input("\nVocê escolheu Nossas Redes Sociais. Qual você deseja visualizar?: ")
            
            if opcao1 == "1":
                (webbrowser.open(face))
                print("Você deseja algo mais ?")
            elif opcao1 == "2":
                (webbrowser.open(insta))
                print("Você deseja algo mais ?")
            elif opcao1 == "3":
                (webbrowser.open(you))
                print("Você deseja algo mais ?")
            elif opcao1 == "4":
                (webbrowser.open(whats))
                print("Você deseja algo mais ?")
            #Voltar
            elif opcao1 == "5":
                break
            else:
                print("\nOpção Inválida! Tente novamente, com os numeros indicados... Obrigado(a).\n")
                continue
    #Opção Sair
    elif opcao == "4":
        while True:
            saida=input("Deseja sair do Atendimento Virtual? (sim/nao):")
            if saida.lower () not in ['sim','nao']:
                print("Digite 'sim' para Sair ou 'nao' para retornar ao Menu Principal.")
                continue
            else:
                if saida == "sim":
                    print("\nMuito obrigado(a), que você seja muito vitorioso(a) na sua jornada!!!\n")
                    exit()
                elif saida == "nao":
                    break
    else:
        print("\nOpção Inválida! Tente novamente...\n")
        continue
    
