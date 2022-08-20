Sub CadastrarRegistros()

    Dim data_registro As Date
    Dim hora_registro


    ActiveScreen.Update = False
    
    Sheets("NomePlanilha").Activate
    Range("B2").Select
    
    'Lopp para procurar a primeira célula em branco
    Do
    If Not (IsEmpty( ActiveCell)) Then
        ActiveCell.Offset(1, 0).Select

    End If

    Loop Until IsEmpty(ActiveCell) = True
    
    
    ActiveCell.Value = Range("NomePlanilha!C8").Value
        ActiveCell.Offset(0, 2).Select 
        
    ActiveCell.Value = Range("NomePlanilha!B11").Value
        ActiveCell.Offset(0, 1).Select 
    
    data_registro = Date
    hora_registro = Now()

    ActiveCell.Value = data_registro
        ActiveCell.Offset(0, 1).Select 

    ActiveCell.Value = hora_registro
    
    ActiveScreen.Update = True
    Sheets("NomePlanilha").Activate
    
End Sub
