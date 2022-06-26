***Settings***

Library     SeleniumLibrary
Resource    amazon_resources.robot

***Keywords***
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br   

Quando acessar o menu "Livros"
    Entrar no menu "Livros"
    
Então o título da página deve ficar "Livros | Amazon.com.br"
    Verificar se o título da página fica "Livros | Amazon.com.br"
    
E o texto "Loja de Livros" deve ser exibido na página
    Verificar se aparece a frase "Loja de Livros"
    
E a categoria "Indicações" deve ser exibida na página
    Verificar se aparece a categoria "Indicações"
    
Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    
Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Clicar no botão de pesquisa
    
E um produto da linha "Xbox Series S" deve ser mostrado na página
    O sistema deve exibir a tela com o resultado da pesquisa, listando o produto "Console Xbox Series S"