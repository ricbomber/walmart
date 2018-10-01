#language: pt

@Carrinho
Funcionalidade: Carrinho de Compras
    Como usuário quero pesquisar no site
    Um produto especifico
	Para que eu veja o resultado

Cenário: Carrinho de Compras
  
    Dado que faça a busca "tv" no site Walmart
    E valido o resultado da pesquisa
    Quando clico no resultado da pesquisa
    E validar se a página abriu corretamente
    Então adiciono o produto ao carrinho
    E valido que o produto foi adicionado com sucesso!
    



