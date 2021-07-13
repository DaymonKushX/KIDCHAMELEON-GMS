///scr_player_state_slopes()

// Verifica se estamos acima de alguma rampa
var inSlopes;
inSlopes = instance_place(x,y+1,parentSlopes);
// Se estivermos acima de alguma rampa verifica outras informacooes
if inSlopes > 0 { 
    var slopeID;
    // Retorna o ID da rampa mais proxima dos pés
    slopesID = instance_nearest(x,y+1,parentSlopes);
        // Verifica se tem uma rampa muito ingrime ou nao
        // Se ela for bastante ingrime muda os sprites
        if (slopesID.slopesHigh){ runInSlopes = true;
            //Verifica a direcao onde o ponto mais alto da rampa.
            if (slopesID.slopesRight){ slopesDir = 1; }else{ slopesDir = -1; }
        // Se a rampa nao for tao alta retorna false;
        } else { runInSlopes = false; slopesDir = 1; slopesID = noone;}
} else { runInSlopes = false; slopesDir = 1; slopesID = noone;}
