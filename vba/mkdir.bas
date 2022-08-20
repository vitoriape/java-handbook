Sub AutoMkdir()

    Dim folders As Range 
    Dim maxRows, maxColumns, rw, cs As Integer
    
    
    Set folders = Selection   '<Assign folders = selected cells>
        
        maxRows = folders.rows.Count
        maxColumns = folders.columns.Count
   
    For cs = 1 To maxColumns   '<Assign value 1 for columns and rows until max>
    rw = 1
        
    Do While rw <= maxRows 
        If Len(Dir(ActiveWorkbook.Path & "\" & folders(rw, cs), vbDirectory)) = 0 Then
            MkDir (ActiveWorkbook.Path & "\" & folders(rw, cs))
        
            On Error Resume Next
            
        End If   '<Loop for folder creation>
    
    rw = rw + 1   '<Loop of rows>
    
    Loop
    Next cs

    MsgBox "Folders created successfully!", vbOKOnly, "Console"
    
End Sub