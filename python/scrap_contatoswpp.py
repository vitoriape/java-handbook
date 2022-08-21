from selenium import webdriver as wd
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from msedge.selenium_tools import EdgeOptions
from msedge.selenium_tools import Edge
import pyautogui as ps
import pyautogui as uk
from openpyxl import load_workbook


edge_options = EdgeOptions()
edge_options.use_chromium = True
py_edge = Edge(executable_path=r"C:\Users\PC\Documents\msedgedriver.exe", options=edge_options)
eg_nav = py_edge#Configuração da automação do navegador


cf = r"C:\Users\PC\Documents\Applications\scrapybots\whatsbot\contatos.xlsx"
cf_cworkbook = load_workbook(cf)
cf_csheet = cf_cworkbook['source']#Caminho do arquivo Excel com os contatos

eg_nav.get('https://web.whatsapp.com/')
while len(eg_nav.find_elements(By.ID, 'side')) < 1:
    ps.sleep(3)#Aguarda três segundos para abrir o WhatsApp

ps.sleep(3)
wa_img = r'C:\Users\PC\Documents\Applications\scrapybots\assets\scrapybots-logo.PNG'#Imagem a ser enviada

for row in range(2, len(cf_csheet['A']) + 1):#Obtém o range da coluna A da primeira linha até a última
    cf_name = cf_csheet['A%s' % row].value#Armazena o nome de cada contato em cada linha da coluna A
    cf_message = cf_csheet['B%s' % row].value#Armazena a mensagem de cada contato em cada linha da coluna B

    eg_nav.find_element(By.XPATH, '//*[@id="side"]/div[1]/div/div/div[2]/div/div[2]').send_keys(cf_name)#Indexa o nome do contato pelo HMTL (XPATH) da página
    ps.sleep(3)
    uk.press('enter')#Pressiona a tecla ENTER
    ps.sleep(3)

    eg_nav.find_elements(By.CSS_SELECTOR, "span[data-icon='clip']")#Encontra o ícone para envio de Imagens
    ps.sleep(3)
    eg_nav.find_elements(By.CSS_SELECTOR, "span[data-icon='clip']").click()
    opt_external_files = eg_nav.find_elements(By.CSS_SELECTOR, "input[type='file']")#Determina o tipo de input de arquivo
    opt_external_files.send_keys(wa_img)
    ps.sleep(3)


    eg_nav.find_element(By.XPATH, '//*[@id="app"]/div/div/div[2]/div[2]/span/div/span/div/div/div[2]/div/div[1]/div[3]/div/div/div[2]/div[1]/div[2]').send_keys(cf_message)#Indexa a mensagem pelo HTML da página
    uk.press('enter')