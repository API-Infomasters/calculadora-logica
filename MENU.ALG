Algoritmo "semnome"
// Disciplina   : Algoritmos
// Professor   : Fabio Sahba
// Descri��o   : O algoritmo abaixo � um simples menu que oferece ai usu�rio 3 op��es de fun��es matem�ticas e uma op��o de encerrar o programa.
// Autor(a)    : Igor Ruiz, Maria Clara, Vitor Trajai, Luis Gustavo Graciano, Breno Cefas e Jo�o Medeiros.
// Data atual  : 25/09/2025
Var

   qtd_termos_alt, i_alt, razao_alt, opcao_alt, opcao: inteiro

   n, contador, numero, i, qtd_divisores, primo : inteiro

   termo, x: inteiro
qwçodkfçlwelgrjl
   iterador, primeiro_termo, numero_termos, razao, enesimo_termo: inteiro

   alt_sinal_alt, termo_alt: real


Inicio

   enquanto opcao <>5 faca
      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Numeros Primos ")
      escreval (" 02 - Sequ�ncia de cubos perfeitos ")
      escreval (" 03 - Progre��o Geom�trica")
      escreval (" 04 - Sair")
      escreval ("")
      Escreval ("-----------------------------")
      leia (opcao)
      limpatela

      se opcao =1 entao
            escreva("Digite o valor de n (posi��o do primo): ")
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

                     se qtd_divisores = 2 entao
                        contador <- contador + 1
                        primo <- numero
                     fimse
            
            fimenquanto
            
            escreval("O ", n, "� n�mero primo �: ", primo)
   
      fimse

      se opcao =2 entao
      
         escreval ("Digite um termo da sequ�ncia de n�meros c�bicos.")
         leia (termo)

         escreval ("Seu valor correspondente na sequ�ncia �:", termo * termo * termo)

         para x de 1 ate 50 faca
              escreval ("O termo", i + termo, " da sequ�ncia �:", (termo + i) * (termo + i) * (termo + i))
         fimpara

      fimse

      se opcao =3 entao

            escreval("Digite o n�mero de termos da progress�o: ")
            leia(numero_termos)

            escreval("Digite o valor da raz�o: ")
            leia(razao)

         escreval("Digite o valor da razão: ")
         leia(razao)

         enesimo_termo <- primeiro_termo

         para iterador de 1 ate numero_termos faca
            escreval("Termo ", iterador, " = ", enesimo_termo)
            enesimo_termo <- enesimo_termo * razao
         fimpara

      fimse

      se opcao = 4 entao

         escreval ("Bem vindo à função de sequência alternada.")
         escreval ("")

         escreva ("Insira o valor do primeiro termo da sequência: ")
         leia (termo_alt)
         escreval ("")

         enquanto (termo_alt < 1) faca
            escreva ("Valor inválido, digite novamente:")
            leia (termo_alt)
            escreval ("")
         fimenquanto

         escreva ("Insira também a razão da sequência: ")
         leia (razao_alt)
         escreval ("")

         enquanto (razao_alt <= 1) faca
            escreva ("Valor inválido, digite novamente:")
            leia (razao_alt)
            escreval ("")
         fimenquanto

         razao_alt <- razao_alt * -1

         escreva ("Por último, insira a quantidade de termos da sequência: ")
         leia(qtd_termos_alt)
         escreval ("")

         enquanto (qtd_termos_alt >= 31) ou (qtd_termos_alt <= 0) faca

            escreval ("Por limitações técnicas, a sequência alternada permite até 30 termos.")
            escreval ("Por favor, insira um valor entre 1 e 30.")
            leia (qtd_termos_alt)
            escreval ("")

         fimenquanto

         escreval ("Qual termo você deseja que seja positivo?")
         escreval ("")

         escreval ("Para o primeiro termo, digite 1.")
         escreval ("Para o segundo termo, digite 2.")
         escreval ("")

         leia (opcao_alt)
         escreval ("")

         enquanto (opcao_alt < 1) ou (opcao_alt > 2) faca
            escreva ("Valor inválido, digite novamente:")
            leia (opcao_alt)
            escreval ("")
         fimenquanto

         escolha (opcao_alt)

         caso 1
            alt_sinal_alt <- 1
            termo_alt <- termo_alt * alt_sinal_alt

         caso 2
            alt_sinal_alt <- -1
            termo_alt <- termo_alt * alt_sinal_alt

         fimescolha

         escreval ("O termo 1 da sequência é:", termo_alt)

         para i_alt de 1 ate qtd_termos_alt -1 faca

            termo_alt <- (termo_alt * razao_alt)
            escreval ("O termo", i_alt + 1, " da sequência é:", termo_alt)

         fimpara

         escreval ("")
         escreval ("Sequência alternada completa com", qtd_termos_alt, " termos!")

      fimse

      se opcao =5 entao

      fimse

   fimenquanto

Fimalgoritmo