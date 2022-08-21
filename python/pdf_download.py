import pyautogui
import pyautogui as BT 
import pyautogui as RE
import pyautogui as UK 

from selenium import webdriver as EW
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from urllib.request import urlopen
from bs4 import BeautifulSoup 


us_email = "email_usuario"
us_psswrd = "senha_usuario"


#Delega a funcionalidade de acesso do navegador ao pyautogui
RE = EW.Edge()

#Acessa a plataforma de login
st_login = 'site_login'
RE.get(st_login)

#Timeout do rpa para carregamento da página
BT.sleep(4)


RE.find_element(By.XPATH, '/html/body/div[5]/div[1]/div[2]/div/div[3]/form[2]/div[1]/input').send_keys(us_email)#Email
BT.sleep(2)
RE.find_element(By.XPATH, '/html/body/div[5]/div[1]/div[2]/div/div[3]/form[2]/div[2]/div/input').send_keys(us_psswrd)#Senha
BT.sleep(2)

RE.find_element(By.XPATH, '/html/body/div[5]/div[1]/div[2]/div/div[3]/form[2]/div[2]/div/input').send_keys(Keys.RETURN)#Entrar
BT.sleep(10)


#Página inicial
st_initial = 'site_curso'
RE.get(st_initial)
BT.sleep(5)

#Manejo do HTML
st_html = urlopen(st_initial)
st_html.read()
BS = BeautifulSoup(st_html, 'lxml')
st_files = BS.select('.attachment-slide col-12 col-sm-4 col-md-5ths')
print(st_files)


#Página final
st_final = "titulo_ultima_pagina"

#Armazena o título da primeira página
st_next = RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[1]/div/div/article/h2').text
str(st_next)
print(st_next)


#Compara o título que cada nova página após realizar o download dos arquivos, caso seja igual do valor definido em st_final, para o looping
while st_next != st_final:
    
    #Arquivo 1
    RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[1]/a').send_keys(Keys.RETURN)
    BT.sleep(2)
    
    
    try:
        
        #Arquivo 2
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[2]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 3
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[3]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 4
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[4]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 5
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[5]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 6
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[6]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 7
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[7]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 8
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[8]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 9
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[9]/a').send_keys(Keys.RETURN)
        BT.sleep(2)

        #Arquivo 10
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[2]/div/div/div/div/div[10]/a').send_keys(Keys.RETURN)
        BT.sleep(2)
        
        
    except:
        
        #Botão Próximo
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/nav/div[2]/i').click()
        BT.sleep(2)
        
        st_next = RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[1]/div/div/article/h2').text
        
    
    else:
        
        #Botão Próximo
        RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/nav/div[2]/i').click()
        BT.sleep(2)
        
        st_next = RE.find_element(By.XPATH, '//*[@id="__blaze-root"]/div/div[2]/div/div/div/section[1]/div/div/article/h2').text
    
print("≧ ◔ ◡ ◔ ≦")