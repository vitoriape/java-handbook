Sub CadastrarRelatorio()

Dim data_registro
data_registro = Now()
data_relatorio = Date

Sheets("PlanilhaRelatorio").Activate 'Seleciona a guia do relatório
Sheets("PlanilhaRelatorio").Range("A3:M300").Copy 'Copia os dados da guia de relatório
Sheets("PlanilhaHistorico").Activate 'Seleciona a guia de registro do relatório

Range("A2").Select


'Loop para procurar a primeira linha em branco
Do
If Not (IsEmpty(ActiveCell)) Then

    ActiveCell.Offset(1, 0).Select

End If

Loop Until IsEmpty(ActiveCell) = True


'Registro dos dados
Sheets("PlanilhaHistorico").Paste

'Registra a data
Sheets("PlanilhaHistorico").Activate
Range("A2").Select

Do
If Not (IsEmpty(ActiveCell)) Then

    ActiveCell.Offset(0, 13).Select
    ActiveCell.Value = data_registro

    ActiveCell.Offset(0, -13).Select
    ActiveCell.Offset(1, 0).Select

End If

Loop Until IsEmpty(ActiveCell) = True


'Mensagem de confirmação do registro
Sheets("PlanilhaRelatorio").Activate
MsgBox "Relatório de registrado com sucesso.", vbOKOnly, "Registro: " & data_relatorio


End Sub