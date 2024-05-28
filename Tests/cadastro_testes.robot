*** Settings ***
Documentation   essa suite testa o cadastro de informações do site sampleapp
Resource        ../Page_Objects/cadastro_resources.robot
Test Setup      Open Browser
Test Teardown   Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Enviar contato válido
    [Documentation]   Esse teste verifica o cadastro do seguro de um veiculo
    [Tags]            cadastro_contato    regressivo
    Dado que estou na tela de contato
    Quando informar os dados do "Contato"
    E clicar em Enviar
    Então sou direcionado para a mensagem de sucesso

Caso de Teste 02 - Enviar contato inválido
    [Documentation]   Esse teste verifica o cadastro do seguro de um veiculo
    [Tags]            cadastro_inválido    regressivo
    Dado que estou na tela de contato
    Quando informar os dados do "Contato" de forma inválida
    E submeter o envio
    Então sou direcionado para a mensagem de erro