# Made by BlondeKid/PheonixMMKC777
$CardA = Get-Random -maximum 10 -Minimum 1
$CardB = Get-Random -maximum 10 -Minimum 1
$CardC = Get-Random -maximum 10 -Minimum 1
$CardD = Get-Random -maximum 10 -Minimum 1
$CardE = Get-Random -maximum 10 -Minimum 1
$Poker = Get-Random -Maximum 21 -Minimum 16


function deal {

Write "================================="
Write "Dealed $CardA and $CardB"
Write "Hand is $CardA $CardB"
$HandVal = $CardA + $CardB
$hs1 = Read-Host "Hit Stay"
Write "================================"

    if ($hs1 -eq "h") {
        Write-Output "You Drew $CardC"    
        Write "Hand is $CardA $CardB $CardC"
        $Handval = $Handval + $CardC
        }  if ($HandVal -gt 21) {
                write "BUST!"
                break
            } if ($hs1 -eq "s") {
                 write "you stay "
                 Valcheck
                    } else {
                $hs2 = Read-Host "Hit Stay?"
                Write "================================"
                if ($hs2 -eq "h") {
                    Write "You Drew $CardD"
                    Write "Hand is $CardA $CardB $CardC $CardD"
                    $HandVal = $Handval + $CardD
                    if ($HandVal -gt 21) {
                        write "BUST!"
                    } Else {
                        $hs3 = Read-Host "Hit or Stay"
                        Write "================================"
                        if ($hs3 -eq "h") {
                            Write "You Drew $CardE"
                            write "Hand is $CardA $CardB $CardC $CardD $CardE"
                            $HandVal = $HandVal + $CardE
                            if ($HandVal -gt 21) {
                                write "BUSTED!"
                            } else {
                                Valcheck
                            }
                        } if ($hs3 = "s") {
                            Write "You Stayed"
                            valcheck
                        }
                    }
                        
                } if ($hs2 -eq "s") {
                write "you stay "
                Valcheck   
                }
            }


} 



function valcheck {

if ($HandVal -gt $Poker) {
    Write "You Win! $HandVal to $Poker"
} else {
    write "You Lost $HandVal to $Poker"
    }

}


deal