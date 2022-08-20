import win32com.client as win32

criar_email = win32.Dispatch('outlook.application')
email_outlook = criar_email.createItem(0)

destinatario = "exemplo@outlook.com" 
nomeDestinatario = "Fulano"

email_outlook.To = destinatario#Destinatário
email_outlook.Subject = "Primeiro e-mail usando Python"#Assunto

#Corpo do e-mail
#Atribuindo f antes de """ permite o uso de variáveis

email_outlook.HTMLBody = f"""
<p>Texto, <b>texto em negrito</b>.</p>
<p>Texto, {nomeDestinatario}. <font color="red"><b><u>Texto colorido negrito tachado</b></u></font></p>
<p><a href="https://www.google.com.br/">Link</a></p>
<p><img scr="C:\\Nome da Pasta\\arquivo.png">Imagem</p>
<p>Att,</p>
<p>PythonUser.</p>
"""

email_outlook.save()#Salvar o e-mail como Rascunho
email_outlook.Send()#Enviar e-mail