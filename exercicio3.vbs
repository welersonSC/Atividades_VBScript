Dim n1, n2, n3, maior, menor, resp


call comparar_num
function comparar_num()
    n1 = CDbl(InputBox("Digite o primeiro número:"))
    n2 = CDbl(InputBox("Digite o segundo número:"))
    n3 = CDbl(InputBox("Digite o terceiro número:"))

    maior = n1
    If n2 > maior Then maior = n2
    If n3 > maior Then maior = n3


    menor = n1
    If n2 < menor Then menor = n2
    If n3 < menor Then menor = n3

     resp = msgbox("Maior: "& maior &"" + vbnewline &_ 
                  "Menor: "& menor &"" + vbnewline &_ 
                  " Gostaria de tentar outros numeros?", vbinformation+vbyesno, "Numeros")
    if resp=vbyes then
        call comparar_num
    else
        wscript.quit
    end if
end function