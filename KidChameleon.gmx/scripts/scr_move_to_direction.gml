///scr_move_to_direction(movespeed)

// DEFININDO A DISTANCIA EM PIXELS

   movespeed=argument0 // 


// Agora que temos a dire??o, ? hora de fazer a varredura ?ngulo. Uma vez que este ir? ocorrer em um loop, ela varre sobre uma crapload de ?ngulos de cada passo.

anglesweep = -90+40*dir; // Este ? o ponto de partida da varredura, em graus.
anglerem = 100; // N?s vamos usar uma varredura de 100 graus.
pathclear = 0; // "Pathclear" ? um interruptor. Se encontrarmos um caminho para andar, ele ? definido como "1" e n?s quebramos o loop.

while (anglerem >= 0 && pathclear = 0){
      anglesweep += 5*dir; // Estamos fazendo saltar 5 graus na nossa varredura.
      anglerem -= 5; // Diminui??o "anglerem" pelos graus em cada intervalo de ?ngulo.

      // Usando a fun??o lengthdir, n?s pegamos x, y coordenadas do local de destino encontrada para o ?ngulo atual.
      
      groundspotx = x+lengthdir_x(movespeed,anglesweep)
      groundspoty = y+lengthdir_y(movespeed,anglesweep)

      // Ent?o, vamos verificar se o local est? livre e se h? terra abaixo dela.
      
      if place_free(groundspotx,groundspoty) && !place_free(groundspotx,groundspoty+5)
             pathclear = 1 // Se assim for, HOORAY! O caminho ? claro para caminhar. Se n?o, "pathclear" vai ficar em 0 eo ciclo vai terminar depois de verificar sua varredura de 100 graus.
      }

// O loop est? agora conclu?do. Tempo para verificar se temos motivos claros para andar, e se j? est?o no terreno.
if (pathclear == 1 && !place_free(x,y+1)){
  // Primeiro, muda as coordenadas X e Y do personagem para o destino.
   x+=lengthdir_x(movespeed,anglesweep)
   y+=lengthdir_y(movespeed,anglesweep)
   move_contact_solid(270,15) // Isto ir? largar o personagem para entrar em contato com o solo, se ele acabou de alguns pixels acima dele.
   vspeed = 0 // N?o necess?rio, mas ? ?til ?s vezes.
   hspeed = 0 // N?o necess?rio, mas ? ?til ?s vezes.
}
// Se falhou no teste "caminho claro", vamos verificar para ver se estamos no ar. Se assim for, n?s apenas mover para a direita / esquerda no ar.
else if place_free(x+lengthdir_x(movespeed, 90-90*dir), y)
     x += dir*max(movespeed-abs(hspeed), 0)
// ?ltima se n?o estamos no ar e n?o t?m nenhum caminho claro para caminhar, vamos mover-se para entrar em contato com o mais pr?ximo obst?culo s?lido.
else{
     move_contact_solid(90-90*dir, max(movespeed-abs(hspeed), 0))
     movingleft = 0
     movingright = 0
}





