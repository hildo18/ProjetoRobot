*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}            http://sampleapp.tricentis.com/101/app.php
${MENU_VEICULO}   //img[contains(@alt,'Tricentis Logo')]
${MENU_SEGURO}    //label[@class='main'][contains(.,'First Name')]
${CHECKBOX}      //p[@class='group'][contains(.,'Speeding Bungee Jumping Cliff Diving Skydiving Other')]


*** Keywords ***

Abrir o navegador
   Open Browser  browser=chrome  options=add_argument("--incognito")
   Maximize Browser Window

Fechar o navegador
   Capture Page Screenshot
   Close Browser
   
   

Dado que estou na tela de cadastro
   Go To    url=${URL}
   Wait Until Element Is Visible    locator=${MENU_VEICULO}  

Quando informar os dados do "Seguro"
   # Esse teste verifica a aba veiculo
    Select From List By Label    Make  Audi
    Select From List By Label    model   Scooter
    Input Text    locator=cylindercapacity    text=1500
    Input Text    locator=engineperformance    text=100
    Input Text    locator=//input[contains(@name,'Date of Manufacture')]   text=11/08/2000
    Select From List By Label    Number of Seats   2
    Click Element    xpath=(//span[contains(@class,'ideal-radio')])[1]
    Select From List By Label    numberofseatsmotorcycle  2
    Select From List By Label    Fuel Type  Diesel
    Input Text    locator=payload    text=1000
    Input Text    locator=totalweight    text=1000
    Input Text    locator=listprice    text=500
    Input Text    locator=//input[contains(@name,'License Plate Number')]    text=0910330
    Input Text    locator=annualmileage    text=100
    Click Element  locator=//button[@name='Next (Enter Insurant Data)'][contains(.,'Next »')]
    Wait Until Element Is Visible    locator=${MENU_SEGURO} 

   #  Esse teste verifica a aba Seguro
    Input Text    locator=firstname    text=Hildo
    Input Text    locator=lastname    text=Costa
    Input Text    locator=birthdate    text=11/08/1990
    Input Text    locator=streetaddress    text=Rua Pajacus
    Input Text    locator=zipcode    text=61760745
    Select From List By Label    Country  Brazil
    Select From List By Label    Occupation  Employee
    Click Element    xpath=(//span[contains(@class,'ideal-check')])[1]
    Click Element  locator=//button[@name='Next (Enter Product Data)'][contains(.,'Next »')]

    #  Esse teste verifica o aba Produto
    Input Text    locator=startdate    text=12/12/2024
    Select From List By Label    insurancesum  3.000.000,00
    Select From List By Label    meritrating   Bonus 1
    Select From List By Label    damageinsurance  No Coverage
    Click element   xpath=(//span[contains(@class,'ideal-check')])[6]
    Select From List By Label    courtesycar  No
    Click Element  locator=//button[@name='Next (Select Price Option)'][contains(.,'Next »')]

   #  Esse teste verifica a aba preço
   Click Element  xpath=(//span[contains(@class,'ideal-radio')])[5]
   Click Element  locator=//button[@name='Next (Send Quote)'][contains(.,'Next »')]

   #  Esse teste verifica o aba envio de email
E clicar em submeter
   Input Text    locator=email    text=hildo18@gmail.com
   Input Text    locator=phone    text=8598992353
   Input Text    locator=username    text=Hildo
   Input Text    locator=password    text=Bnb2020!
   Input Text    locator=confirmpassword    text=Bnb2020!
   Click Element  locator=sendemail
Então sou direcionado para a mensagem de sucesso
   Sleep  10
   Wait Until Element Is Visible    locator=//h2[contains(.,'Sending e-mail success!')]
   # Wait Until Page Contains    Sending e-mail success!


                                                


