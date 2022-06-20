import pandas as pd
import os

from openpyxl import load_workbook
from openpyxl import Workbook


file_path = r"C:\Users\PC\Documents\Teste"
file_list = os.listdir(file_path)

file_data = pd.DataFrame()


path_and_list = [
    file_path + '\\' + fiLe 
        for fiLe in file_list 
            if fiLe [-4:] == 'xlsx']#Lê os últimos 4 caracteres do arquivo, se = xlsx então executa o script


for fiLe in path_and_list:

    general_data = pd.read_excel(fiLe)
    file_data = file_data.append(general_data)#Acumula os dados dos arquivos selecionados


file_data.to_excel(r"C:\Users\PC\Documents\ArquivoConsolidado.xlsx")#Salva os dados acumulados

newFile_path = "C:\\Users\\PC\\Documents\\ArquivoConsolidado.xlsx"
file_systemData = load_workbook(filename=newFile_path)


sheet_newFile = file_systemData['Sheet1']
sheet_newFile.delete_cols(1)#Deleta a primeira coluna da Sheet1
sheet_newFile.title = 'Dados Consolidados'#Renomeia a Sheet1 do novo arquivo para Dados Consolidados

file_data = Workbook()
file_data.save('ArquivoConsolidado.xlsx')#Salva o novo arquivo
os.startfile(newFile_path)#Abre o novo arquivo