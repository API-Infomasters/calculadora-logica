Algoritmo "API: Calculadora de Sequências Lógicas"

Var

   // Variaveis globais
   opcao: inteiro

   // Numeros primos
   n_pri, contador_pri, numero_pri, i_pri, qtd_divisores_pri, primo_pri : inteiro

   // Cubos perfeitos
   termo_cub, i_cub: inteiro
   valor_cub: real

   // Progressao geometrica
   iterador_geo, primeiro_termo_geo, numero_termos_geo, razao_geo, enesimo_termo_geo: inteiro

   // Sequencia alternada
   qtd_termos_alt, i_alt, razao_alt, opcao_alt: inteiro
   alt_sinal_alt, termo_alt: real

   // Sequencia de tribonacci
   termo_um_tri, termo_dois_tri, termo_tres_tri, termo_seguinte_tri, contador_tri: inteiro

   // Sequencia de fibonacci
   primeiro_termo_fib, segundo_termo_fib, proximo_termo_fib, contador_fib: inteiro

   // Sequ�ncia de triangulos perfeitos
   n, i, m, indice, soma, proximo: inteiro
   termos: vetor[1..51] de inteiro
   continuar: caractere
   pertence: logico

// Sequencia fatorial
   n_fat, i_fat, t_fat: inteiro
   fatorial_fat: real

Inicio

   enquanto (opcao <> 10) faca

      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Numeros Primos ")
      escreval (" 02 - Sequência de Cubos Perfeitos ")
      escreval (" 03 - Progressão Geométrica")
      escreval (" 04 - Sequência Alternada")
      escreval (" 05 - Sequência de Tribonacci")
      escreval (" 06 - Sequência de Fibonacci")
      escreval (" 07 - Sequência Fatorial")
      escreval (" 09 - Sequ�ncia de triangulos perfeitos")
      escreval (" 10 - Sair")
      escreval ("")
      escreval ("-----------------------------")
      leia (opcao)
      limpatela

      escolha (opcao)

      caso 1
         // Sequencia de numeros primos

         escreva ("Digite o valor de n (posição do número primo): ")
         leia (n_pri)
         escreval ("")

         contador_pri <- 0
         numero_pri <- 1

         enquanto contador_pri < n_pri faca
            numero_pri <- numero_pri + 1
            qtd_divisores_pri <- 0


            para i_pri de 1 ate numero_pri faca
               se numero_pri % i_pri = 0 entao
                  qtd_divisores_pri <- qtd_divisores_pri + 1
               fimse
            fimpara

            se qtd_divisores_pri = 2 entao
               contador_pri <- contador_pri + 1
               primo_pri <- numero_pri
            fimse

         fimenquanto

         escreval("O ", n_pri, "º número primo é:", primo_pri)
         escreval ("")

      caso 2
         // Sequencia de cubos perfeitos

         escreva ("Digite um termo da sequência de cubos perfeitoss:")
         leia (termo_cub)
         escreval ("")
         escreval ("Seu valor correspondente na sequência é:", termo_cub ^ 3)

         para i_cub de 1 ate 50 faca

            valor_cub <- (termo_cub + i_cub) ^ 3
            escreval ("O termo", i_cub + termo_cub, " da sequência é:", valor_cub)

         fimpara

         escreval ("")
         escreval ("Sequência completa com", i_cub, " termos!")
         escreval ("")

      caso 3
         // Progressao geometrica

         escreva ("Digite o valor do primeiro termo:")
         leia (primeiro_termo_geo)
         escreval ("")

         escreva ("Digite o número de termos da progressão:")
         leia (numero_termos_geo)
         escreval ("")

         escreva ("Digite o valor da razão:")
         leia (razao_geo)
         escreval ("")

         enesimo_termo_geo <- primeiro_termo_geo

         para iterador_geo de 1 ate numero_termos_geo faca
            escreval("Termo ", iterador_geo, " = ", enesimo_termo_geo)
            enesimo_termo_geo <- enesimo_termo_geo * razao_geo
         fimpara

         escreval ("")
         escreval ("Progressão geométrica completa com", numero_termos_geo, " termos!")
         escreval ("")

      caso 4
         // Sequencia alternada

         escreval ("Bem vindo a função de sequência alternada.")
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

         enquanto (qtd_termos_alt <= 0) faca

            escreval ("Número inválido, digite novamente.")
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

         para i_alt de 1 ate qtd_termos_alt faca

            termo_alt <- (termo_alt * razao_alt)
            escreval ("O termo", i_alt + 1, " da sequência é:", termo_alt)

         fimpara

         escreval ("")
         escreval ("Sequência alternada completa com", qtd_termos_alt + 1, " termos!")
         escreval ("")

      caso 5
         //Sequencia de tribonacci

         escreva ("Digite o primeiro termo da sequência de Tribonacci: ")
         leia (termo_um_tri)

         termo_dois_tri <- 1
         termo_tres_tri <- 1

         escreval ("Sequencia de Tribonacci com primeiro termo ", termo_um_tri, ":")
         escreval ("Termo 1: ", termo_um_tri)
         escreval ("Termo 2: ", termo_dois_tri)
         escreval ("Termo 3: ", termo_tres_tri)

         para contador_tri de 4 ate 52 faca
            termo_seguinte_tri <- termo_um_tri + termo_dois_tri + termo_tres_tri
            escreval ("Termo", contador_tri, ": ", termo_seguinte_tri)

            termo_um_tri <- termo_dois_tri
            termo_dois_tri <- termo_tres_tri
            termo_tres_tri <- termo_seguinte_tri
         fimpara

         escreval ("")
         escreval ("Sequência de Tribonacci completa com 52 termos!")

      caso 6
         // Sequencia de fibonacci

         // Solicita o primeiro termo ao usuário
         escreva ("Digite o primeiro termo da sequência de Fibonacci: ")
         leia (primeiro_termo_fib)

         // Define o segundo termo como 1 (padrão da sequência de Fibonacci)
         segundo_termo_fib <- 1

         // Exibe o cabeçalho
         escreval ("Sequência de Fibonacci com primeiro termo ", primeiro_termo_fib, ":")
         escreval ("Termo 1:  ", primeiro_termo_fib)
         escreval ("Termo 2:  ", segundo_termo_fib)

         // Calcula e exibe os próximos 50 termos (termos 3 a 52)
         para contador_fib de 3 ate 52 faca
            proximo_termo_fib <- primeiro_termo_fib + segundo_termo_fib
            escreval ("Termo ", contador_fib, ": ", proximo_termo_fib)

            // Atualiza os valores para a próxima iteração
            primeiro_termo_fib <- segundo_termo_fib
            segundo_termo_fib <- proximo_termo_fib
         fimpara

         escreval ("")
         escreval ("Sequência de Fibonacci completa com 52 termos!")
         escreval ("")

caso 7

escreva ("Digite um número para ver a sua sequência fatorial: ")
      leia (n_fat)

      enquanto n_fat < 0 faca
         escreval("Erro: Só é possivel calcular o fatorial de números positivos.")
         leia (n_fat)
      fimenquanto

      escreval ("Sequência Fatorial de 0! até ", n_fat, "! ")

      para i_fat de 0 ate n_fat faca

         fatorial_fat <- 1

         para t_fat de 1 ate i_fat faca
            fatorial_fat <- fatorial_fat * t_fat
         fimpara

         escreval (i_fat, "! = ", fatorial_fat)
      fimpara

      caso 9
         // Sequ�ncia de tri�ngulos perfeitos
         repita
            // Pede o n�mero at� ser v�lido
            repita
               escreva("Digite un valor entero positivo: ")
               leia(n)
               se n < 1 entao
                  escreval("Valor inv�lido! Insira um valro inteiro e positivo.!")
               fimse
            ate n >= 1

            // Verifica se n pertence � sequ�ncia triangular
            pertence <- falso
            i <- 1
            enquanto (i * (i + 1)) div 2 <= n faca
               se (i * (i + 1)) div 2 = n entao
                  pertence <- verdadeiro
               fimse
               i <- i + 1
            fimenquanto

            // Calcula os 51 termos seguintes
            para indice de 1 ate 51 faca
               m <- n + indice - 1
               termos[indice] <- (m * (m + 1)) div 2
            fimpara

            escreval("")

            se pertence = verdadeiro entao
               escreval("n = ", n, " pertenece a sequ�ncia de n�meros triangulares.")
            senao
               proximo <- (i * (i + 1)) div 2
               escreval("n = ", n, " n�o pertenece a sequ�ncia de n�meros triangulares.")
               escreval("O pr�ximo termo da sequ�ncia �: ", proximo)
            fimse

            escreval("")
            escreval("Os 50 termos seguintes s�o:")
            para indice de 2 ate 51 faca
               escreval("T_", n + indice - 1, " = ", termos[indice])
            fimpara

            escreval("")
            escreva("Desea continuar a execu��o(S/N)? ")
            leia(continuar)

         ate (continuar = "N") ou (continuar = "n")

      caso 10

      fimescolha

   fimenquanto

Fimalgoritmo
