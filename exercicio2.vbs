Dim n1, perim, area, resp

call calculo_quad
function calculo_quad
    n1=Cdbl(inputbox("Digite o numero: ", "Medida do Quadrado"))
    area = n1*n1
    perim = n1*4

        resp = msgbox("Area: "& area &"" + vbnewline &_ 
                  "Perimetro: "& perim &"" + vbnewline &_ 
                  " Gostaria de tentar outro numero?", vbinformation+vbyesno, "Numeros")
    if resp=vbyes then
        call calculo_quad
    else
        wscript.quit
    end if
end function
