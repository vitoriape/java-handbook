import pandas as pd
import os

from openpyxl import load_workbook
from openpyxl import Workbook


file_path = r"C:\Users\PC\Documents\Teste"
file_list = os.listdir(file_path)#Lista os diretórios do caminho selecionado

file_data = pd.DataFrame()


path_and_list = [
    file_path + '\\' + fiLe 
        for fiLe in file_list 
            if fiLe [-4:] == 'xlsx']#Lê os últimos 4 caracteres do arquivo, se = xlsx então executa o script


for fiLe in path_and_list:

    general_data = pd.read_excel(fiLe)
    file_data = file_data.append(general_data)#Consolida os dados dos arquivos selecionados

file_data.to_excel(r"C:\Users\PC\Documents\ArquivoConsolidado.xlsx")#Salva os dados consolidados