import xlsxwriter
import os

caminhoArquivo = 'C:\\Users\\PC\\CaminhoPasta\\NomeArquivo.xlsx'#Determina o caminho da planilha
planilhaCriada = xlsxwriter.Workbook(caminhoArquivo)#Define a planilha criada como ConsProc e atribui à ela a biblioteca xlsxwriter
sheet1 = planilhaCriada.add_worksheet()#Cria uma planilha em branco com o nome Sheet1 que receberá os dados minerados pelo bot

sheet1.write("A1", "Nome")
sheet1.write("B1", "Idade")

sheet1.write("A2", "Fulano")
sheet1.write("B2", 28)

sheet1.write("A3", "Ciclano")

planilhaCriada.close()#Fecha o arquivo
os.startfile(caminhoArquivo)#Abre o arquivo para visualização