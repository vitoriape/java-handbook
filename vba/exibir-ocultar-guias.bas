Sub ExibirGuias()

    If Sheets("Planilha1").Visible = False Then
        Sheets("Planilha1").Visible = True
    End If
    
    
    If Sheets("Planilha2").Visible = False Then
        Sheets("Planilha2").Visible = True
    End If
    
    
    Sheets("Planilha3").Select
    Range("A1").Select

End Sub



Sub OcultarGuias()

    If Sheets("Planilha1").Visible = True Then
        Sheets("Planilha1").Visible = False
    End If
    
    
    If Sheets("Planilha2").Visible = True Then
        Sheets("Planilha2").Visible = False
    End If

    Sheets("Planilha3").Select
    Range("A1").Select

End Sub

