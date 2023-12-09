*** Settings ***
Documentation   essa suite testa o cadastro de informações do site sampleapp
Resource        cadastro_resources.robot
Test Setup      Open Browser
Test Teardown   Fechar o navegador


*** Test Cases ***

Caso de Teste 01 - Cadastro de seguro
    [Documentation]   Esse teste verifica o cadastro do seguro de um veiculo
    [Tags]            cadastro_seguro    seguro
    Dado que estou na tela de cadastro
    Quando informar os dados do "Seguro"
    # E clicar em submeter
    # Então sou direcionado para a mensagem de sucesso
 
# Caso de Teste 02 - Preencher dados seguro
#     [Documentation]   Esse teste verifica o cadastro de dados de seguro
#     [Tags]            cadastro_seguro    seguro
#     Dado que estou na tela de cadastro
#     Quando informar os dados do "Seguro"
    # E clicar em proximo
    # Então sou direcionado para tela de produto
# Caso de Teste 03 - Preencher dados produto
#     [Documentation]   Esse teste verifica o cadastro de dados do produto
#     [Tags]            cadastro_produto    produto
#     Dado que estou na tela de produto
#     Quando informar os dados do "Produto"
#     E clicar em proximo
#     Então sou direcionado para tela de seguro

# Caso de Teste 04 - selecionar dados preço
#     [Documentation]   Esse teste verifica o cadastro de dados do  preço
#     [Tags]            cadastro_preco    preco
#     Dado que estou na tela de preco
#     Quando selecionar o preco
#     E clicar em proximo
#     Então sou direcionado para tela de cotacao


# Caso de Teste 05 - Submeter cotação
#    [Documentation]   Esse teste verifica o envio da cotação
#    [Tags]            envio_cotacao    cotacao
#    Dado que estou na tela de cotacao
#    Quando envia a envio_cotacao
#     E clicar em proximo
#     Então sou direcionado para tela de cotacao

# Caso de Teste 06 - Validar mensagem
#    [Documentation]   Esse teste verifica a mensagem exibida na tela
#    [Tags]            exibir_mensagem    mensagem