*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}            http://sampleapp.tricentis.com/101/app.php
${MENU_VEICULO}   //img[contains(@alt,'Tricentis Logo')]
${MENU_SEGURO}    //label[@class='main'][contains(.,'First Name')]
${CHECKBOX}      //p[@class='group'][contains(.,'Speeding Bungee Jumping Cliff Diving Skydiving Other')]


*** Keywords ***

Abrir o navegador
   Open Browser  browser=chrome
   Maximize Browser Window

Fechar o navegador
   Capture Page Screenshot
   Close Browser
   
   

Dado que estou na tela de cadastro
   Go To    url=${URL}
   Wait Until Element Is Visible    locator=${MENU_VEICULO}  

Quando informar os dados do "Seguro"
    Select From List By Label    Make  Audi
    Input Text    locator=engineperformance    text=100
    Input Text    locator=//input[contains(@name,'Date of Manufacture')]   text=11/08/2000
    Select From List By Label    Number of Seats   2
    Select From List By Label    Fuel Type  Diesel
    Input Text    locator=listprice    text=500
    Input Text    locator=//input[contains(@name,'License Plate Number')]    text=0910330
    Input Text    locator=annualmileage    text=100
    Click Element  locator=//button[@name='Next (Enter Insurant Data)'][contains(.,'Next »')]
    Wait Until Element Is Visible    locator=${MENU_SEGURO} 
    Input Text    locator=firstname    text=Hildo
    Input Text    locator=lastname    text=Costa
    Input Text    locator=birthdate    text=11/08/1990
    Input Text    locator=streetaddress    text=Rua Pajacus
    Input Text    locator=zipcode    text=61760745
    Select From List By Label    Country  Brazil
    Select From List By Label    Occupation  Employee
    Wait Until Element Is Visible   ${CHECKBOX}
    Select Checkbox  speeding
    Checkbox Should Be Selected    Hobbies
                                            
                                                


