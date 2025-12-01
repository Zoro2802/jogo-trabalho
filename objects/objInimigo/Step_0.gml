// Verificar se player existe
if (instance_exists(objPlayer)) {

    // Distância até o player
    var d = point_distance(x, y, objPlayer.x, objPlayer.y);

    // Se estiver longe, andar em direção ao player
    if (d > dist_ataque) {
		sprite_index = sprInimigoCorrendo
		
        var dir = point_direction(x, y, objPlayer.x, objPlayer.y);
        x += lengthdir_x(vel, dir);
		image_xscale =  sign(lengthdir_x(vel, dir)) * -1
    }
    // Se estiver perto o suficiente, atacar
    else {
        if (pode_atacar and ! alarm > 0) {
			sprite_index = sprInimigoAtaque
			
            pode_atacar = false;
            alarm[0] = tempo_recarga;
        }
    }
}