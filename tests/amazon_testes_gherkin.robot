*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br utilizando Gherkin

Resource         ../resources/amazon_resources.robot
Resource         ../resources/amazon_resources_gherkin.robot

Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Livros"
    [Documentation]    Esse teste verifica o menu Livros do site da Amazon.com.br
    ...                e a categoria Indicações utilizando Gherkin
    [Tags]             menus
    
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Livros"
    Então o título da página deve ficar "Livros | Amazon.com.br"
    E o texto "Loja de Livros" deve ser exibido na página
    E a categoria "Indicações" deve ser exibida na página
    

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um produto utilizando Gherkin
    [Tags]             busca_produtos
    
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página

