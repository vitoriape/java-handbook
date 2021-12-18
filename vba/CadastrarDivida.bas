Attribute VB_Name = "RegistrarDivida"
Sub Cadastrar()

    Dim IdPatrimonio
    Dim CodTributario
    Dim TipoTributacao
    Dim NumCobranca
    Dim Exercicio
    Dim ValorOri
    Dim ValorCob
    Dim ValorTot
    Dim NumCotas
    Dim ReDate

    ' ----------> [Trava exibição da tela e seleciona a célula B2 da planilha Taxes] <-----------
    ActiveScreen.Update = False
        Sheets("Taxes").Activate

    Range("B2").Select
    
    ' ----------> [Loop que procura por uma célula em branco na primeira coluna] <-----------
    Do
    If Not (IsEmpty( ActiveCell)) Then
        ActiveCell.Offset(1, 0).Select

    End If

    Loop Until IsEmpty(ActiveCell) = True
    
    ' ----------> [Registra os valores relativos em Form na planilha Taxes] <-----------
    ActiveCell.Value = Range("Form!C8").Value
        ActiveCell.Offset(0, 2).Select 
        
    ActiveCell.Value = Range("Form!B11").Value
        ActiveCell.Offset(0, 1).Select 
        
    ActiveCell.Value = Range("Form!B14").Value
        ActiveCell.Offset(0, 1).Select 
        
    ActiveCell.Value = Range("Form!C11").Value
        ActiveCell.Offset(0, 1).Select 
        
    ActiveCell.Value = Range("Form!C14").Value
        ActiveCell.Offset(0, 1).Select 
        
    ActiveCell.Value = Range("Form!C19").Value
        ActiveCell.Offset(0, 1).Select 
        
    ActiveCell.Value = Range("Form!C20").Value
        ActiveCell.Offset(0, 1).Select 
        
    ActiveCell.Value = Range("Form!C21").Value
        ActiveCell.Offset(0, 1).Select 
        
    ActiveCell.Value = Range("Form!C16").Value
        ActiveCell.Offset(0, 2).Select 
        
    ' ----------> [Registra a data de cadastro dos dados] <-----------
    ReDate = Date
        ActiveCell.Value = ReDate '[10]
    
    ActiveScreen.Update = True
    Sheets("Taxes").Activate
    
End Sub
