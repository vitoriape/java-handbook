import pyautogui
import pyautogui as runCmd

runCmd.hotkey('win', 'r')#Executa o atalho Win + 2, abrindo o prompt de comando
runCmd.sleep(2)#Aguarda dois segundos
runCmd.typewrite('cmd')#Digita o nome de arquivo do prompt de comando
runCmd.press('enter')#Executa a tecla enter