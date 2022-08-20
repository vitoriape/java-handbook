Sub ExportarPDF()

    Dim Current As Worksheet
    For Each Current In Worksheets '#Loop through all worksheets in the active workbook
    
        Worksheets(Current.Name).Activate
        
    With ActiveSheet.PageSetup'#Page Settings
            
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
            
    Next
    
        ActiveWorkbook.ExportAsFixedFormat Type:=xlTypePDF '#Export sheet as PDF file
        
    MsgBox "File configured and exported successfully", vbOKOnly, "Console" '#Confirmation message
    Shell "C:\WINDOWS\explorer.exe """ & ActiveWorkbook.Path & "", vbNormalFocus '#Show file location

End Sub