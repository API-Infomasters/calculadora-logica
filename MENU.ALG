Algoritmo "API: Calculadora de Sequências Lógicas"

Var

   // Variaveis globais
   opcao: inteiro

   // Variaveis reutilizáveis para todas as sequências
   n: real
   i, j, contador, qtd_divisores, numero: inteiro
   termo1, termo2, termo3, termo_seguinte, resultado: real

   // Progressao geometrica
   razao_geo: inteiro

   // Sequencia alternada
   qtd_termos_alt, razao_alt: inteiro
   alt_sinal_alt: real

   // Sequencia de triangulos perfeitos
   m, m_base_calc: inteiro
   termos: vetor[1..51] de inteiro
   continuar: caractere

   // Sequencia de quadrados perfeitos
   termoK, K: inteiro

Inicio

   enquanto (opcao <> 10) faca

      escreval ("----------CALCULADORA INFOMASTERS----------")
      escreval ("")
      escreval (" 01 - Numeros Primos ")
      escreval (" 02 - Sequência de Cubos Perfeitos ")
      escreval (" 03 - Progressão Geométrica")
      escreval (" 04 - Sequência Alternada")
      escreval (" 05 - Sequência de Tribonacci")
      escreval (" 06 - Sequência de Fibonacci")
      escreval (" 07 - Sequência Fatorial")
      escreval (" 08 - Sequência de Triangulos Perfeitos")
      escreval (" 09 - Sequência de Quadrados Perfeitos")
      escreval (" 10 - Sair")
      escreval ("")
      escreval ("-------------------------------------------")
      leia (opcao)
      limpatela

      continuar <- "S"
      escolha (opcao)

      caso 1
         // Sequencia de numeros primos

         enquanto (continuar = "S") ou (continuar = "s") faca

            escreva ("Digite o valor de n (posição do número primo): ")
            leia (n)
            escreval ("")

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
                  termo1 <- numero
               fimse

            fimenquanto

            escreval("O ", n, "º número primo é:", termo1)
            escreval ("")

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 2
         // Sequencia de cubos perfeitos

         enquanto (continuar = "S") ou (continuar = "s") faca

            escreva ("Digite um termo da sequência de cubos perfeitos:")
            leia (termo1)
            escreval ("")
            escreval ("Seu valor correspondente na sequência é:", termo1 ^ 3)

            para i de 1 ate 50 faca

               resultado <- (termo1 + i) ^ 3
               escreval ("O termo", i + termo1, " da sequência é:", resultado)

            fimpara

            escreval ("")
            escreval ("Sequência completa com", i + 1, " termos!")

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 3
         // Progressao geometrica

         enquanto (continuar = "S") ou (continuar = "s") faca

            escreva ("Digite o valor do primeiro termo:")
            leia (termo1)
            escreval ("")

            escreva ("Digite o número de termos da progressão:")
            leia (numero)
            escreval ("")

            escreva ("Digite o valor da razão:")
            leia (razao_geo)
            escreval ("")

            resultado <- termo1

            para i de 1 ate numero faca
               escreval("Termo ", i, " = ", resultado)
               resultado <- resultado * razao_geo
            fimpara

            escreval ("")
            escreval ("Progressão geométrica completa com", numero, " termos!")

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 4
         // Sequencia alternada

         enquanto (continuar = "S") ou (continuar = "s") faca

            escreval ("Bem vindo a função de sequência alternada.")
            escreval ("")

            escreva ("Insira o valor do primeiro termo da sequência: ")
            leia (termo1)
            escreval ("")

            enquanto (termo1 < 1) faca
               escreva ("Valor inválido, digite um número inteiro e positivo: ")
               leia (termo1)
               escreval ("")
            fimenquanto

            escreva ("Insira também a razão da sequência: ")
            leia (razao_alt)
            escreval ("")

            enquanto (razao_alt <= 1) faca
               escreva ("Valor inválido, digite um número inteiro e positivo: ")
               leia (razao_alt)
               escreval ("")
            fimenquanto

            razao_alt <- razao_alt * -1

            escreva ("Por último, insira a quantidade de termos da sequência: ")
            leia(qtd_termos_alt)
            escreval ("")

            enquanto (qtd_termos_alt <= 0) faca

               escreva ("Número inválido, digite um número inteiro e positivo: ")
               leia (qtd_termos_alt)
               escreval ("")

            fimenquanto

            escreva ("Você deseja que o primeiro termo seja positivo? (S/N) ")
            leia (continuar)
            escreval ("")

            se (continuar = "S") ou (continuar = "s") entao

               alt_sinal_alt <- 1
               termo1 <- termo1 * alt_sinal_alt

            senao

               alt_sinal_alt <- -1
               termo1 <- termo1 * alt_sinal_alt

            fimse

            escreval ("O termo 1 da sequência é:", termo1)

            para i de 1 ate qtd_termos_alt faca

               termo1 <- (termo1 * razao_alt)
               escreval ("O termo", i + 1, " da sequência é:", termo1)

            fimpara

            escreval ("")
            escreval ("Sequência alternada completa com", qtd_termos_alt + 1, " termos!")
            escreval ("")

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 5
         //Sequencia de tribonacci

         enquanto (continuar = "S") ou (continuar = "s") faca

            escreva ("Digite o primeiro termo da sequência de Tribonacci: ")
            leia (termo3)

            termo1 <- 1
            termo2 <- 1

            escreval ("Sequencia de Tribonacci com primeiro termo ", termo1, ":")
            escreval ("Termo 1: ", termo1)
            escreval ("Termo 2: ", termo2)
            escreval ("Termo 3: ", termo3)

            para contador de 4 ate 52 faca
               termo_seguinte <- termo1 + termo2 + termo3
               escreval ("Termo", contador, ": ", termo_seguinte)

               termo1 <- termo2
               termo2 <- termo3
               termo3 <- termo_seguinte
            fimpara

            escreval ("")
            escreval ("Sequência de Tribonacci completa com 52 termos!")

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 6
         // Sequencia de fibonacci

         enquanto (continuar = "S") ou (continuar = "s") faca

            // Solicita o primeiro termo ao usuário
            escreva ("Digite o primeiro termo da sequência de Fibonacci: ")
            leia (termo2)

            // Define o segundo termo como 1 (padrão da sequência de Fibonacci)
            termo1 <- 1

            // Exibe o cabeçalho
            escreval ("Sequência de Fibonacci com primeiro termo ", termo1, ":")
            escreval ("Termo 1:  ", termo1)
            escreval ("Termo 2:  ", termo2)

            // Calcula e exibe os próximos 50 termos (termos 3 a 52)
            para contador de 3 ate 52 faca
               termo_seguinte <- termo1 + termo2
               escreval ("Termo ", contador, ": ", termo_seguinte)

               // Atualiza os valores para a próxima iteração
               termo1 <- termo2
               termo2 <- termo_seguinte
            fimpara

            escreval ("")
            escreval ("Sequência de Fibonacci completa com 52 termos!")
            escreval ("")

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 7
         // Sequencia fatorial

         enquanto (continuar = "S") ou (continuar = "s") faca

            escreva ("Digite um número para ver a sua sequência fatorial: ")
            leia (k)

            enquanto k < 0 faca
               escreval("Erro: Só é possivel calcular o fatorial de números positivos.")
               leia (k)
            fimenquanto

            escreval ("Sequência Fatorial de 0! até ", k, "! ")

            para i de 0 ate k faca

               resultado <- 1

               para j de 1 ate i faca
                  resultado <- resultado * j
               fimpara

               escreval (i, "! = ", resultado)
            fimpara

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 8
         // Triangulos perfeitos

         enquanto (continuar = "S") ou (continuar = "s") faca

            // Pede um numero ate ser valido
            repita
               escreva("Digite o termo (inteiro e positivo) que deseja calcular: ")
               leia(n)

               // Adiciona a validacao: n deve ser positivo e igual a sua parte inteira
               se (n < 1) ou (n <> int(n)) entao
                  escreval("Valor inválido! Insira um número inteiro positivo.")
               fimse

            ate (n >= 1) e (n = int(n)) // Condi  o de sa da: n   positivo e   inteiro

            // Converte n para inteiro para o resto do c lculo
            m_base_calc <- int(n)

            // Calcula o n- simo termo e os 50 seguintes
            escreval("")

            para i de 0 ate 50 faca
               m <- m_base_calc + i
               termos[i + 1] <- (m * (m + 1)) div 2
            fimpara

            // Mostra o termo correspondente e os 50 seguintes
            escreval("O ", m_base_calc, "  termo da sequência de triângulos perfeitos  : ", termos[1])
            escreval("")
            escreval("Os 50 termos seguintes são:")

            para i de 2 ate 51 faca
               escreval("T -", m_base_calc + i - 1, " = ", termos[i])
            fimpara

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 9
         // Quadrados perfeitos

         enquanto (continuar = "S") ou (continuar = "s") faca

            // Entrada
            escreva("Digite o valor de n (inteiro positivo): ")
            leia(K)

            // validação simples
            se K <= 0 entao
               escreval("Valor inválido. n deve ser inteiro positivo.")

            fimse

            // calcula o enésimo termo (quadrado perfeito)
            termoK := K * K
            escreval()
            escreval("Enésimo termo: (n = ", K, ") -> ", termoK)
            escreval()

            // mostra os próximos 50 termos da sequência de quadrados perfeitos
            escreval("Próximos 50 termos (índice -> valor):")
            para i := K + 1 ate K + 50 faca
               escreval(i, " -> ", i * i)
            fimpara

            escreval ("")
            escreva ("Deseja continuar a execução? (S/N) ")
            leia (continuar)
            escreval ("")

         fimenquanto

      caso 10

      fimescolha
