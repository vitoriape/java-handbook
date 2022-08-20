Sub ShowAndHideRows()

    Rows("23:25").Select
    
    If Selection.EntireRow.Hidden = False Then 
        Selection.EntireRow.Hidden = True
    
    Else: Selection.EntireRow.Hidden = False
    End If 'Caso as células não estejam ocultas, oculta as mesmas

End Sub

