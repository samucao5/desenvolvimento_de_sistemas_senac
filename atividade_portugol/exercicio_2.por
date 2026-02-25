programa
{
    funcao inicio()
    {
        cadeia nomes[6]
        real gastos[6]
        real valorFinal, totalDia = 0
        real desconto
        inteiro i, qtdDesconto = 0

        escreva("Informe o valor do desconto do dia: ")
        leia(desconto)

        para (i = 0; i < 6; i++)
        {
            escreva("\nCliente ", i + 1, "\n")
            escreva("Nome: ")
            leia(nomes[i])

            escreva("Valor gasto: ")
            leia(gastos[i])
        }

        escreva("\n===== RESULTADO =====\n")

        para (i = 0; i < 6; i++)
        {
            valorFinal = gastos[i]

            se (gastos[i] > 100)
            {
                valorFinal = gastos[i] - desconto
                qtdDesconto++
            }

            escreva("Cliente: ", nomes[i], " | Valor final: R$ ", valorFinal, "\n")

            totalDia = totalDia + valorFinal
        }

        escreva("\nTotal recebido no dia: R$ ", totalDia, "\n")
        escreva("Clientes que receberam desconto: ", qtdDesconto, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 891; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */