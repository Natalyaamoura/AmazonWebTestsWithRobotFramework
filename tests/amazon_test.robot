*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br

Resource         ../resources/amazon_resources.robot

Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Livros"
    [Documentation]    Esse teste verifica o menu Livros do site da Amazon.com.br
    ...                e a categoria Lançamentos
    [Tags]             menus
    
    Acessar a home page do site Amazon.com.br     
    Entrar no menu "Livros"
    Verificar se aparece a frase "Loja de Livros"
    Verificar se o título da página fica "Livros | Amazon.com.br"
    Verificar se aparece a categoria "Lançamentos"

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto 
    [Tags]             busca_produtos
    
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    O sistema deve exibir a tela com o resultado da pesquisa, listando o produto "Console Xbox Series S"
