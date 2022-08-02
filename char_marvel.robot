*** Settings ***
Library     RequestsLibrary
Resource    config.py  

*** Variables ***
${URL}=

*** Test Cases ***
Testar API Characters da Marvel
    Configurar nossa autorizacao para API
    Realizar a requisicao para API
    #Fazer a Validacao dos campos necessarios


*** Keywords ***
Configurar nossa autorizacao para API
    ${URL}  Set Variable  ${URL_CHAR}?apikey=${API_KEY}

Realizar a requisicao para API
    Create Session  requisicao_char  ${BASE_URL}  headers=${HEADERS}
    ${response_char}=  Get On Session  requisicao_char  ${URL}
    Log To Console  ${response_char}