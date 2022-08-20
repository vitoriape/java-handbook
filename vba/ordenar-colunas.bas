Sub OrdenarColuna()

    ActiveWorkbook.Worksheets("Planilha").AutoFilter.Sort.SortFields.Clear 'Limpa todos os filtros
    ActiveWorkbook.Worksheets("Planilha").AutoFilter.Sort.SortFields.Add Key:=Range("A:A"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:=xlSortNormal
        
    With ActiveWorkbook.Worksheets("Planilha").AutoFilter.Sort

        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply

    End With
    
End Sub