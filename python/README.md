Guia Python
=================
<!--ts-->
* [Convertendo Texto em Fala](#convertendo-texto-em-fala)
<!--te-->

---

## **Convertendo Texto em Fala**
```python
pip install pypiwin32
import win32com.client 
  
winspeaker = win32com.client.Dispatch("SAPI.SpVoice") 
  
while 1: 
    print("Type a phrase for me") 
    text = input() 
    winspeaker.Speak(text) 
```
		   
---
---