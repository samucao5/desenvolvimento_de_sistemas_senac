programa
{
	
	funcao inicio()
	{
		cadeia nome_cliente, vegetariano, dieta, pagamento
		
		escreva("Digite seu nome:\n-> ")
		leia(nome_cliente)
		
		escreva("Você é vegetariano? (sim ou nao):\n-> ")
	     leia(vegetariano)
		
		escreva("Você está em dieta? (sim ou nao):\n-> ")
		leia(dieta)
		
		se(vegetariano == "sim" e dieta == "sim")
		{
		    escreva(nome_cliente, ", a recomendação do chef é salada")
		}
		senao se(vegetariano == "nao" e dieta == "sim")
		{
			escreva(nome_cliente, ", a recomendação do chef é frango grelhado")
		}
		senao se(vegetariano == "sim" e dieta == "nao")
		{
			escreva(nome_cliente, ", a recomendação do chef é macarrão")
		}
		senao
		{
		    escreva(nome_cliente, ", a recomendação do chef é feijoada")
		}
		
		escreva("\n",nome_cliente, ", digite sua forma de pagamento (cartao ou dinheiro):\n-> ")
		leia(pagamento)
		
		se(pagamento == "dinheiro")
		{
			escreva("\nO cliente tem 15% de desconto")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 924; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */