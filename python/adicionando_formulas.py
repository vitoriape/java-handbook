import pandas as pd
import os

from openpyxl import load_workbook
from openpyxl import Workbook


file_path = r"C:\Users\PC\Documents\Teste\ArquivoTeste"
load_file_path = load_workbook(filename=file_path)
sheet_tester = load_file_path('AbaTeste')

for linha in range(2, len(sheet_tester['A']) + 1):
    columnA = 'A' + str(linha)
    columnB = 'B' + str(linha)


last_line = linha + 1
last_line_cell = 'C' + str(last_line)

insert_formula = "=SUM(A:B" + str(linha) + ")"
sheet_tester[last_line_cell] = insert_formula
