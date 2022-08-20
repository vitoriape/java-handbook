Sub AutoFilter()

    ValorFiltro = Range("F1").Value 'Determina o valor da célula F1 como valor a ser filtrado
    ActiveSheet.Range("A:Q").AutoFilter Field:=6, Criteria1:=ValorFiltro 'Filtra o range de células pelo critério indexado em ValorFiltro

End Sub
