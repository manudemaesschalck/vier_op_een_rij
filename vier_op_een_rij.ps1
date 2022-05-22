
Write-Host '------------------------------------------------------------------------------------'


Write-Host 'Welkom bij het spel 4 op een Rij'
Write-Host 'De bedoeling van het spel is dat je Als eerst 4 dezelfde tekens naast elkaar krijgt'
Write-Host 'Horizontaal, verticaal, schuin'
Write-Host 'de spelers kiezen om de beurt een rij van 1 tot en met 7'
Write-Host 'Het teken komt terect in het meest onderste beschikbare vakje '
Write-Host 'to start the game press game'


Write-Host '--------------------------------------------------------------------------------------'
function reset-Waardes (){
   $script:1A = ''
   $script:1B = ''
   $script:1C = ''
   $script:1D = ''
   $script:1E = ''
   $script:1F = ''

   $script:2A = ''
   $script:2B = ''
   $script:2C = ''
   $script:2D = ''
   $script:2E = ''
   $script:2F = ''

   $script:3A = ''
   $script:3B = ''
   $script:3C = ''
   $script:3D = ''
   $script:3E = ''
   $script:3F = ''

   $script:4A = ''
   $script:4B = ''
   $script:4C = ''
   $script:4D = ''
   $script:4E = ''
   $script:4F = ''

   $script:5A = ''
   $script:5B = ''
   $script:5C = ''
   $script:5D = ''
   $script:5E = ''
   $script:5F = ''

   $script:6A = ''
   $script:6B = ''
   $script:6C = ''
   $script:6D = ''
   $script:6E = ''
   $script:6F = ''

   $script:7A = ''
   $script:7B = ''
   $script:7C = ''
   $script:7D = ''
   $script:7E = ''
   $script:7F = ''
   
}
function users {
   $playerx = 0
   $playery = 0
   return $playerx, $playery
   
}
function leaderboard(){
   
   $leaderboardquestion = Read-Host "Wie heeft er gewonnen x of y of niemand n"

   if ($leaderboardquestion -eq 'x'){
      $playerx++
   }
   if ($leaderboardquestion -eq 'y'){
      $playery++
   }
   Write-Host
   Write-Host
   Write-Host "tussenstand X vs Y"
   Write-Host
   Write-Host
   Write-Host "Player x = $($playerx)"
   Write-Host "Player Y = $($playery)"
   
}

function leaderboard(){
   reset-Waardes
   $leaderboardquestion = Read-Host "Wie heeft er gewonnen x of y of niemand n"

   if ($leaderboardquestion -eq 'x'){
      $playerx++
   }
   if ($leaderboardquestion -eq 'y'){
      $playery++
   }
   Write-Host
   Write-Host
   Write-Host "tussenstand X vs Y"
   Write-Host
   Write-Host
   Write-Host "Player x = $($playerx)"
   Write-Host "Player Y = $($playery)"
   
}

function board{

    Write-Host '----Vier OP EEN RIJ board----'
    Write-Host '     1       2       3       4       5        6        7'
    Write-Host '   _______________________________________________________'
    Write-Host 'A |  '$1A'       '$2A'       '$3A'       '$4A'       '$5A'       '$6A'       '$7A'     '
    Write-Host '  |_______|_______|_______|_______|_______|_______|_______|'
    Write-Host 'B |  '$1B'       '$2B'       '$3B'       '$4B'       '$5B'       '$6B'       '$7B'    '
    Write-Host '  |_______|_______|_______|_______|_______|_______|_______|'
    Write-Host 'C |  '$1C'       '$2C'       '$3C'       '$4C'       '$5C'       '$6C'       '$7C'    '
    Write-Host '  |_______|_______|_______|_______|_______|_______|_______|'
    Write-Host 'D |  '$1D'       '$2D'       '$3D'       '$4D'       '$5D'       '$6D'       '$7D'    '
    Write-Host '  |_______|_______|_______|_______|_______|_______|_______|'
    Write-Host 'E |  '$1E'       '$2E'       '$3E'       '$4E'       '$5E'       '$6E'       '$7E'    '
    Write-Host '  |_______|_______|_______|_______|_______|_______|_______|'
    Write-Host 'F |  '$1F'       '$2F'       '$3F'       '$4F'       '$5F'       '$6F'       '$7F'    '
    Write-Host '  |_______|_______|_______|_______|_______|_______|_______|'
    Write-Host ''
    Write-Host ''
    Write-Host ''
  
}

   $playericon = 'y'
   $teller
   reset-Waardes
   while ($true){

   [int32]$rowquestion = Read-Host 'give the row name'

   if($rowquestion -eq 0){
      leaderboard
   }

   if ($rowquestion -eq 1){
      #rij1
      if ($1F -eq ''){
         $1F = $playericon
         board
      }
      elseif ($1E -eq ''){
         $1E = $playericon
         board
      }
      elseif ($1D -eq ''){
         $1D = $playericon
         board
      }
      elseif ($1C -eq ''){
         $1C = $playericon
         board
      }
      elseif ($1B -eq ''){
         $1B = $playericon
         board
      }
      elseif ($1A -eq ''){
         $1A = $playericon
         board
      }
   }
   #------rij2-----#
   if ($rowquestion -eq 2){
       #rij2
       if ($2F -eq ''){
         $2F = $playericon
         board
      }
      elseif ($2E -eq ''){
         $2E = $playericon
         board
      }
      elseif ($2D -eq ''){
         $2D = $playericon
         board
      }
      elseif ($2C -eq ''){
         $2C = $playericon
         board
      }
      elseif ($2B -eq ''){
         $2B = $playericon
         board
      }
      elseif ($2A -eq ''){
         $2A = $playericon
         board
      }
   }
   
   #-----row3-----#
   if ($rowquestion -eq 3){
      #rij2
      if ($3F -eq ''){
        $3F = $playericon
        board
     }
     elseif ($3E -eq ''){
        $3E = $playericon
        board
     }
     elseif ($3D -eq ''){
        $3D = $playericon
        board
     }
     elseif ($3C -eq ''){
        $3C = $playericon
        board
     }
     elseif ($3B -eq ''){
        $3B = $playericon
        board
     }
     elseif ($3A -eq ''){
        $3A = $playericon
        board
     }
   }
   
   #-----row4-----#
   if ($rowquestion -eq 4){
      #rij2
      if ($4F -eq ''){
        $4F = $playericon
        board
     }
     elseif ($4E -eq ''){
        $4E = $playericon
        board
     }
     elseif ($4D -eq ''){
        $4D = $playericon
        board
     }
     elseif ($4C -eq ''){
        $4C = $playericon
        board
     }
     elseif ($4B -eq ''){
        $4B = $playericon
        board
     }
     elseif ($4A -eq ''){
        $4A = $playericon
        board
     }
   }
   
   #-----row5-----
   elseif ($rowquestion -eq 5){
      #rij2
      if ($5F -eq ''){
        $5F = $playericon
        board
     }
     elseif ($5E -eq ''){
        $5E = $playericon
        board
     }
     elseif ($5D -eq ''){
        $5D = $playericon
        board
     }
     elseif ($5C -eq ''){
        $5C = $playericon
        board
     }
     elseif ($5B -eq ''){
        $5B = $playericon
        board
     }
     elseif ($5A -eq ''){
        $5A = $playericon
        board
     }
   }
   #-----row6-----#
   if ($rowquestion -eq 6){
      #rij2
      if ($6F -eq ''){
        $6F = $playericon
        board
     }
     elseif ($6E -eq ''){
        $6E = $playericon
        board
     }
     elseif ($6D -eq ''){
        $6D = $playericon
        board
     }
     elseif ($6C -eq ''){
        $6C = $playericon
        board
     }
     elseif ($6B -eq ''){
        $6B = $playericon
        board
     }
     elseif ($6A -eq ''){
        $6A = $playericon
        board
     }
   }
   
   #-----row7-----#
   elseif ($rowquestion -eq 7){
      #rij2
      if ($7F -eq ''){
        $7F = $playericon
        board
     }
     elseif ($7E -eq ''){
        $7E = $playericon
        board
     }
     elseif ($7D -eq ''){
        $7D = $playericon
        board
     }
     elseif ($7C -eq ''){
        $7C = $playericon
        board
     }
     elseif ($7B -eq ''){
        $7B = $playericon
        board
     }
     elseif ($7A -eq ''){
        $7A = $playericon
        board
     }
   }

   $teller += 1
   if($teller % 2 -eq 0 ) {
      $playericon = 'y'}
   else {
      $playericon = 'x'
   }
}





   

