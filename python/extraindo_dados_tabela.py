from selenium import webdriver as wb
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import pyautogui as py_timeout
from openpyxl import load_workbook
import os


ws_data = r"C:\Users\PC\Documents\teste\Dados Tabela.xlsx"
open_ws_data = load_workbook(ws_data)
sh_data = open_ws_data['data']#Determina sh_data como a guia data da planilha Dados Tabela


nav = wb.Edge()
nav.get("https://rpachallengeocr.azurewebsites.net/")


#Loop das linhas e das páginas:
site_line = 1
i = 1

while i < 4:
    sh_dataG = open_ws_data['data']

    get_site_sheet = nav.find_element(By.XPATH, '//*[@id="tableSandbox"]')#Armazena o XPATH da tabela inteira em uma variável

    site_sheet_lines = get_site_sheet.find_elements(By.TAG_NAME, "tr")#Encontra os valores das "linhas" da tabela no HTML
    site_sheet_columns = get_site_sheet.find_elements(By.TAG_NAME, "td")#Encontra os valores das "colunas" da tabela no HTML


    for liNe  in site_sheet_lines:#Cria um loop para registrar cada linha no html do site

        site_line = site_line + 1
        site_line = len(sh_dataG['A']) + 1

        site_columnA = "A" + str(site_line)#Concatena o prefixo da coluna A com o número da linha, converte o mesmo para string
        site_columnB = "B" + str(site_line)#Concatena o prefixo da coluna B com o número da linha, converte o mesmo para string
        site_columnC = "C" + str(site_line)#Concatena o prefixo da coluna C com o número da linha, converte o mesmo para 
        
        tx_one = liNe.text
        tx_two = tx_one.split(" ")

        sh_dataG[site_columnA] = tx_two[0]
        sh_dataG[site_columnB] = tx_two[1]
        sh_dataG[site_columnC] = tx_two[2]

    i += 1
    py_timeout.sleep(2)#Faz o pyautogui esperar dois segundos
    nav.find_element(By.XPATH, '//*[@id="tableSandbox_next"]').click()#Avança para a próxima página clicando no botão Next
    py_timeout.sleep(2)


else:
    print("Fim do script")

open_ws_data.save(filename=ws_data)#Salva o arquivo
os.startfile(ws_data)#Abre o arquivo
