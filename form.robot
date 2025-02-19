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
${day_check_box_friday}       id:friday
*** Keywords ***
Automatizar preenchimento do site
    Open Browser           url=https://testautomationpractice.blogspot.com    browser=Chrome
    ...                    options= add_experimental_option("detach",True)

    Input Text             locator=${input_name} 
    ...                    text=${name}
    
    Input Text             locator=${input_email}
    ...                    text=${email}
    
    Input Text             locator=${input_phone}    
    ...                    text=${phone}
    
    Input Text             locator=${input_adress}
    ...                    text=${adress}
    
    Select Radio Button    group_name=gender
    ...                    value=male
    
    Select Checkbox    locator=${day_check_box_sunday}
    Select Checkbox    locator=${day_check_box_thursday}
    Select Checkbox    locator=${day_check_box_friday}


*** Test Cases ***
Automatizando site
    Automatizar preenchimento do site