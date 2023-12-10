*** Settings ***
Documentation   essa suite testa o cadastro de informações do site sampleapp
Resource        ../Page_Objects/cadastro_resources.robot
Test Setup      Open Browser
Test Teardown   Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Cadastro de seguro
    [Documentation]   Esse teste verifica o cadastro do seguro de um veiculo
    [Tags]            cadastro_seguro    seguro
    Dado que estou na tela de cadastro
    Quando informar os dados do "Seguro"
    E clicar em submeter
    Então sou direcionado para a mensagem de sucesso