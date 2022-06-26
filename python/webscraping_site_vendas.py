from selenium import webdriver
from msedge.selenium_tools import EdgeOptions
from msedge.selenium_tools import Edge
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import pyautogui as py_timeout
import pyautogui as nav


edge_options = EdgeOptions()
edge_options.use_chromium = True
nav = Edge(executable_path=r'C:\Users\PC\Documents\aplicações\msedgedriver.exe', 
            options=edge_options)#Informa o path com o webdriver a ser executado pelo selenium

nav.maximize_window()
nav.get("https://www.olx.com.br/")#Acessa o site da olx

nav.find_element(By.ID, "searchtext").send_keys("alugar rio das ostras")
py_timeout.sleep(1)
nav.find_element(By.CLASS_NAME, "searchSubmitBtn").click()
py_timeout.sleep(2)#Pesquisa por "alugar rio das ostras na barra de pesquisa"


ad_data = nav.find_elements(By.CLASS_NAME, "sc-1fcmfeb-2 iezWpY")#Identifica todos os anúncios da página


sh_lines = 2

for info in ad_data:
    ad_description = nav.find_element(By.CLASS_NAME, "kgl1mq-0 iYdPim sc-bdVaJa daxpJj").text#Indexa a descrição do anúncio pelo elemento class do html da página
    
    ad_value = nav.find_element(By.CLASS_NAME, "sc-1kn4z61-1 hzqyCO").text#Indexa o valor do anúncio pelo elemento class do html da página

    print(ad_description + "  -  " + ad_value)
