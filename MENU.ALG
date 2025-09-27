Algoritmo "semnome"
// Disciplina   : Algoritmos
// Professor   : Fabio Sahba
// Descrição   : O algoritmo abaixo é um simples menu que oferece ai usuário 3 opções de funções matemáticas e uma opção de encerrar o programa.
// Autor(a)    : Igor Ruiz, Maria Clara, Vitor Trajai, Luis Gustavo Graciano, Breno Cefas e João Medeiros.
// Data atual  : 25/09/2025
Var

   opcao:inteiro
   
   n, contador, numero, i, qtd_divisores, primo : inteiro
   
   termo, x: inteiro
   
   iterador, primeiro_termo, numero_termos, razao, enesimo_termo: inteiro

Inicio

   enquanto opcao <>4 faca
      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Numeros Primos ")
      escreval (" 02 - Sequência de cubos perfeitos ")
      escreval (" 03 - Progreção Geométrica")
      escreval (" 04 - Sair")
      escreval ("")
      Escreval ("-----------------------------")
      leia (opcao)
      limpatela
      
      se opcao =1 entao
            escreva("Digite o valor de n (posição do primo): ")
            leia(n)

            contador <- 0
            numero <- 1

            enquanto contador < n faca
                     numero <- numero + 1
                     qtd_divisores <- 0


                     para i de 1 ate numero faca
                          se numero % i = 0 entao
                             qtd_divisores <- qtd_divisores + 1
                          fimse
                     fimpara

                     se qtd_divisores = 2 entao
                        contador <- contador + 1
                        primo <- numero
                     fimse
            
            fimenquanto
            
            escreval("O ", n, "º número primo é: ", primo)
   
      fimse

      se opcao =2 entao
      
         escreval ("Digite um termo da sequência de números cúbicos.")
         leia (termo)

         escreval ("Seu valor correspondente na sequência é:", termo * termo * termo)

         para x de 1 ate 50 faca
              escreval ("O termo", i + termo, " da sequência é:", (termo + i) * (termo + i) * (termo + i))
         fimpara

      fimse
      
      se opcao =3 entao
      
            escreval("Digite o valor do primeiro termo: ")
            leia(primeiro_termo)

            escreval("Digite o número de termos da progressão: ")
            leia(numero_termos)

            escreval("Digite o valor da razão: ")
            leia(razao)

            enesimo_termo <- primeiro_termo

            para iterador de 1 ate numero_termos faca
                 escreval("Termo ", iterador, " = ", enesimo_termo)
                 enesimo_termo <- enesimo_termo * razao
            fimpara
            
      fimse
      
      se opcao =4 entao
      
      fimse
      
   fimenquanto
   
Fimalgoritmo
