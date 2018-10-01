
Dado("que faça a busca {string} no site Walmart") do |string|
    visit 'https://www.walmart.com.br'
    
    fill_in 'suggestion-search', with: 'tv'
    find('#suggestion-search').native.send_keys(:enter)
 end
  
Dado("valido o resultado da pesquisa") do
    @resultado = find(:xpath, "//*[@id='sort-by']/span[1]").text
    puts @resultado
end
  
Quando("clico no resultado da pesquisa") do
    
    first(:xpath, "//*[@id='product-list']/section/ul/li[1]/section/a[1]").click
end
  
Dado("validar se a página abriu corretamente") do
    expect(page).to have_content 'Smart TV LED 65" Philco PTV65A11DSGWA Ultra HD 4K com 3 HDMI e 2 USB Preta com Conversor Digital Integrado'
end
 
Então("adiciono o produto ao carrinho") do
    find('.btn-label').click
end
  
Dado("valido que o produto foi adicionado com sucesso!") do
    find('.cart-icon').click
    expect(page).to have_content 'Meu carrinho'
    @carrinho = find('.my-cart-header-title').text
    puts @carrinho
end