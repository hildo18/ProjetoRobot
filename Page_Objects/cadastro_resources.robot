*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}            https://ultimateqa.com/contact/
${MENU_CONTATO}   (//font[contains(.,'Contate-nos')])[2]



*** Keywords ***

Abrir o navegador
   Open Browser  browser=chrome  options=add_argument("--incognito")
   Maximize Browser Window

Fechar o navegador
   Capture Page Screenshot
   Close Browser

Dado que estou na tela de contato
   Go To    url=${URL}
   # Wait Until Element Is Visible    locator=${MENU_CONTATO}  

Quando informar os dados do "Contato"
   # Esse teste verifica a aba veiculo
    Input Text    locator=et_pb_contact_name_0    text=hildo costa fontenele
    Input Text    locator=et_pb_contact_email_0    text=hildo_costa3@hotmail.com
    Input Text    locator=et_pb_contact_message_0   text=teste direcionado para mensagem de sucesso


E submeter o envio
    Click Element  locator=//button[@type='submit'][contains(.,'Submit')]

  
E clicar em Enviar
   Click Element  locator=//button[@type='submit'][contains(.,'Submit')]
   Sleep  5s
   Click Element  locator=//button[@type='submit'][contains(.,'Submit')]
   Sleep  2s
   Click Element  locator=//button[@type='submit'][contains(.,'Submit')]
Então sou direcionado para a mensagem de sucesso
   Sleep    5s
   Wait Until Element Is Visible    locator=//p[contains(.,'Thank you for contacting us. We will get back to you soon!')]      
   # Wait Until Page Contains    Sending e-mail success!
Quando informar os dados do "Contato" de forma inválida
   Input Text    locator=et_pb_contact_name_0    text=hildo costa fontenele
   Input Text    locator=et_pb_contact_email_0    text=hildo_costa3@hotmail.com
   Input Text    locator=et_pb_contact_message_0   text=teste direcionado para mensagem de erro
Então sou direcionado para a mensagem de erro
   Sleep    5s
   Wait Until Element Is Visible    locator=//p[@class='et_pb_contact_error_text'][contains(.,'You must be a human to submit this form.')]     
   # Wait Until Page Contains    Sending e-mail success!

                                                


