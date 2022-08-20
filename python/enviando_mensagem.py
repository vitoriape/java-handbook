import pyautogui as openBrowser
import pyautogui as sendMessage

openBrowser.moveTo(x=26, y=103)
openBrowser.click(x=26, y=103)
openBrowser.sleep(3)
openBrowser.typewrite('start brave')
openBrowser.sleep(3)
openBrowser.press('enter')
openBrowser.sleep(4)

sendMessage.typewrite('https://web.whatsapp.com/')
sendMessage.press('enter')
sendMessage.sleep(6)
sendMessage.press('tab')
sendMessage.typewrite('Usuário')
sendMessage.press('enter')
sendMessage.sleep(2)
sendMessage.typewrite('Mensagem')
sendMessage.press('enter')