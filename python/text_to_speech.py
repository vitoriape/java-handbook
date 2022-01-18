import win32com.client 
  
winspeaker = win32com.client.Dispatch("SAPI.SpVoice") 
  
while 1: 
    print("Type a phrase for me") 
    text = input() 
    winspeaker.Speak(text) 