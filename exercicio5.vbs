Dim audio, lista(20), acertos, puloUsado, n, resp

call configurar_sistema

function configurar_sistema()
    set audio = createobject("SAPI.SPVOICE")
    audio.volume = 100
    audio.rate = 1
    
    ' Carregando 20 palavras na lista
    lista(1) = "Banana": lista(2) = "Carro": lista(3) = "Dedo"
    lista(4) = "Escola": lista(5) = "Faca": lista(6) = "Gato"
    lista(7) = "Hora": lista(8) = "Igreja": lista(9) = "Jogo"
    lista(10) = "Ketchup": lista(11) = "Limao": lista(12) = "Mesa"
    lista(13) = "Navio": lista(14) = "Ovo": lista(15) = "Pato"
    lista(16) = "Queijo": lista(17) = "Rato": lista(18) = "Sapo"
    lista(19) = "Tatu": lista(20) = "Uva"
    
    call iniciar_jogo
end function

function iniciar_jogo()
    acertos = 0
    puloUsado = 0 ' 0 para não usado, 1 para usado
    n = 1 ' Contador da palavra atual
    erros = 0
    
    do while n <= 20
        audio.speak(lista(n))
        resp = InputBox("O que você ouviu?" & vbCrLf & "[1] Repetir | [2] Pular")
        
        if resp = "1" then
            audio.speak(lista(n))
            resp = InputBox("Última chance! Digite a palavra:")
        end if
        
        if resp = "2" then
            if puloUsado = 0 then
                puloUsado = 1
                n = n + 1
            else
                MsgBox "Você já usou seu pulo! Jogo encerrado."
                exit do
            end if
        elseif LCase(resp) = LCase(lista(n)) then
            acertos = acertos + 1
            n = n + 1
        else
            MsgBox "Errou! A palavra era " & lista(n)
            erros = 1
            exit do
        end if
    loop
    
    audio.speak("Fim de jogo. Você acertou " & acertos)
    resp = msgbox("Acertos: "& acertos &"" + vbnewline &_ 
                  "Erros: "& erros &"" + vbnewline &_ 
                  "Gostaria de tentar de novo?", vbinformation+vbyesno, "Jogo de palavras")
    if resp=vbyes then
        call entrada_dados
    else
        wscript.quit
    end if
end function