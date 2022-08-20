Sub ConfigurarPDF()

    Sheets("NomePlanilha").Select
        
    With ActiveSheet.PageSetup '#Page Settings
            
                .PaperSize = xlPaperA4                             ' Set papersize = A4 Paper
                .Orientation = xlLandscape                         ' Set orientation = Landscape
                
                .LeftMargin = Application.InchesToPoints(0.25)     ' Configure margin = Narrow
                .RightMargin = Application.InchesToPoints(0.25)
                .TopMargin = Application.InchesToPoints(0.75)
                .BottomMargin = Application.InchesToPoints(0.75)
                .HeaderMargin = Application.InchesToPoints(0.3)
                .FooterMargin = Application.InchesToPoints(0.3)
                
                .Zoom = False                                       ' Do not zoom the sheet
                .FitToPagesWide = 1                                 ' Set sheet scale = One page
                .FitToPagesTall = 1
                
                .CenterHorizontally = True                          ' Center sheet horizontally
                .CenterVertically = True                            ' Center sheet vertically
                
                .PrintHeadings = False                              ' Do not print headings
                .PrintGridlines = False                             ' Do not print sheet gridlines
                
                .BlackAndWhite = False                              ' Do not print black and white
            
    End With
    
    ActiveWorkbook.ExportAsFixedFormat Type:=xlTypePDF '#Export sheet as PDF file
    
    'Next
    
    Sheets("NomePlanilha").Select
    MsgBox "O arquivo PDF foi gerado e salvo na pasta Documentos", vbOKOnly, "Console" '#Confirmation message
    

End Sub
