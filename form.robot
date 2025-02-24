*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${name}                         Thiago Pernella Leme
${email}                        teste@gmail.com
${phone}                        11 99908972
${adress}                       rua teste numero 234
${input_name}                   id:name
${input_email}                  id:email
${input_phone}                  id:phone
${input_adress}                 id:textarea
${day_check_box_sunday}         id:sunday
${day_check_box_thursday}       id:thursday
${day_check_box_friday}         id:friday
${input_start_date}             id:start-date
${start_date}                   25/02/2025
${input_end_date}               id:end-date
${end_date}                     26/02/2025
${buton_submit}                 class:submit-btn
*** Keywords ***
Abrir navegador
    Open Browser           url=https://testautomationpractice.blogspot.com    browser=Chrome
    ...                    options= add_experimental_option("detach",True)

Inputar nome
    Input Text             locator=${input_name} 
    ...                    text=${name}
    
Inputar email    
    Input Text             locator=${input_email}
    ...                    text=${email}
    
Inputar phone
    Input Text             locator=${input_phone}    
    ...                    text=${phone}
    
Inputar adress
    Input Text             locator=${input_adress}
    ...                    text=${adress}
    
Selecionar gênero
    Select Radio Button    group_name=gender
    ...                    value=male
    
Selecionar dia da semana
    Select Checkbox    locator=${day_check_box_sunday}
    Select Checkbox    locator=${day_check_box_thursday}
    Select Checkbox    locator=${day_check_box_friday}

Selecionar País
    Click Element    locator=//*[@id="country"]
    Click Element    locator=//*[@id="country"]/option[3]

Selecionar cor
    Click Element    locator=//*[@id="colors"]/option[1]

Selecionar animal
    Click Element    locator=//*[@id="animals"]/option[6]

Inserir Data Picker 1
    Click Element    locator=//*[@id="datepicker"]
    Click Element    locator=//*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a

Inserir Data Picker 2
    Click Element    locator=//*[@id="txtDate"]
    Click Element    locator=//*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[4]/a

Inserir Data Picker start-date
    Input Text    locator=${input_start_date}
    ...           text=${start_date}

Inserir Data Picker end-date
    Input Text    locator=${input_end_date}
    ...           text=${end_date}

Clicar Submit
    Click Button    locator=${buton_submit}

    Sleep    5

Fechar navegador
    Close Browser

*** Test Cases ***
Automatizando site
    Abrir navegador
    Inputar nome
    Inputar email
    Inputar phone
    Inputar adress
    Selecionar gênero
    Selecionar dia da semana
    Selecionar País
    Selecionar cor
    Selecionar animal
    Inserir Data Picker 1
    Inserir Data Picker 2
    Inserir Data Picker start-date
    Inserir Data Picker end-date
    Clicar Submit
    Fechar navegador
