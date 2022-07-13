*** Settings ***
Documentation     BLE dump from Wireshar tester
Library    PySharkLibrary.py

*** Variables ***
${FILE}    NUS_capture.pcap
${FILTER}    btatt.handle == 0x0015

*** Test Cases ***
Gather anb print to log
    ${packets}    Open Dump File    ${FILE}    ${FILTER}
    Log    ${packets}
    FOR    ${packet}    IN    @{packets}
       Log    ${packet}
    END
 