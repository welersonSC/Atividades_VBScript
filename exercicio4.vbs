Dim salMinimo, qtdSalarios, salBruto, inss, salLiquido, taxa

salMinimo = 1621.00
call entrada_dados

function entrada_dados()
    qtdSalarios = CDbl(InputBox("Digite a quantidade de salários:"))
    salBruto = qtdSalarios * salMinimo
    call calcular_inss
end function

function calcular_inss()
    if salBruto <= 1621 then
        taxa = 0.075
    elseif salBruto <= 2902.84 then
        taxa = 0.09
    elseif salBruto <= 4354.27 then
        taxa = 0.12
    else
        taxa = 0.14
    end if
    
    inss = salBruto * taxa
    salLiquido = salBruto - inss


         resp = msgbox("Salário Bruto: R$ "& salBruto &"" + vbnewline &_ 
                        "Desconto INSS: R$ "& inss &"" + vbnewline &_ 
                        "Salário liquido: "& salLiquido &"" + vbnewline &_ 
                  " Gostaria de tentar outro salario?", vbinformation+vbyesno, "Salários e  Desconto")
    if resp=vbyes then
        call entrada_dados
    else
        wscript.quit
    end if
    


end function

