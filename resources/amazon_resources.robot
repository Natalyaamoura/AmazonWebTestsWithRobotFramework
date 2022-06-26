***Settings***

Library     SeleniumLibrary

*** Variables ***
${BROWSER}=            chrome
${BASEURL}=            http://www.amazon.com.br
${BOOKS_MENU}=         //a[@href='/Livros/b/?ie=UTF8&node=6740748011&ref_=nav_cs_books'][contains(.,'Livros')]
${SEARCH_INPUT}=       twotabsearchtextbox 
${SEARCH_BUTTON}=      nav-search-submit-button 


***Keywords***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    
Fechar o navegador
    Capture Page Screenshot
    Close Browser
    
Acessar a home page do site Amazon.com.br   
    Go To       url=${BASEURL}
    Wait Until Element Is Visible      locator=${BOOKS_MENU}
    
Entrar no menu "Livros"
    Click Element    locator=${BOOKS_MENU}
    
Verificar se aparece a frase "${TEXT_HEADER_ELETRONICS}"
    Wait Until Page Contains       text=${TEXT_HEADER_ELETRONICS}
    
Verificar se o título da página fica "${TITLE}"
    Title Should Be    title=${TITLE}
    
Verificar se aparece a categoria "${CATEGORY}"
    Element Should Be Visible        locator=//img[@alt='${CATEGORY}']
    
Digitar o nome de produto "${PRODUCT}" no campo de pesquisa
    Input Text    locator=${SEARCH_INPUT}    text=${PRODUCT}
    
Clicar no botão de pesquisa
    Click Element    locator=${SEARCH_BUTTON}
    
O sistema deve exibir a tela com o resultado da pesquisa, listando o produto "${LISTED_PRODUCT}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${LISTED_PRODUCT}')])[2]
