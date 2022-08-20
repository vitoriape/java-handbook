import win32com.client as win32

from openpyxl import load_workbook
import os

criar_email = win32.Dispatch('outlook.application')
email_outlook = criar_email.createItem(0)

caminho_arquivo = 'C:\\Users\\PC\\CaminhoPasta\\ListaEmail.xlsx'
planilha_emails = load_workbook(filename=caminho_arquivo)

ListaEmail_guiaDados = planilha_emails['Dados']

#Para arranjo manual do range até a linha 1000, por exemplo:
#for linha in range(2, 1000):
#len(ListaEmail_guiaDados['A']) + 1 = 1000

for linha in range(2, len(ListaEmail_guiaDados['A']) + 1):
    nome_colaborador = ListaEmail_guiaDados['A%s' % linha].value
    nome_completo = ListaEmail_guiaDados['B%s' % linha].value
    email_colaborador = ListaEmail_guiaDados['C%s' % linha].value

    #Criação do e-mail
   
    email_outlook.To = email_colaborador#Destinatário
    email_outlook.Subject = "Relatório X: " + nome_completo#Assunto

    #Corpo do e-mail
    email_outlook.HTMLBody = f"""
    <p>Prezado(a), {nome_colaborador}</p>
    <p>Segue em anexo o relatório referente a X.</p>
    <p>Att,</p>
    <p>Administração</p>
    """
    
    #Anexando planilha
    planilha_anexo = 'C:\\Users\\PC\\CaminhoPasta\\' + nome_completo + '.xlsx'
    email_outlook.Attachments.Add(planilha_anexo)
    
    email_outlook.Send()#Enviar e-mail