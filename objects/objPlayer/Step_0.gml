
/*
if keyboard_check(vk_down) or keyboard_check(ord("S")){
	y += velocidade
}
*/

if (keyboard_check_direct(vk_left) or keyboard_check(ord("A"))) {
	x -= global.velocidade

	 if image_xscale > 0{
		image_xscale *= -1
	 }
}

if (keyboard_check(vk_right) or keyboard_check(ord("D"))){
	x += global.velocidade
	
	if image_xscale < 0{
		image_xscale *= -1
	}
}

//Não muda o sprite enquanto estiver dando dash
if global.tempoDash != 15 and global.tampoAtaque != 3{
	if keyboard_check(vk_anykey){
		sprite_index = skinsPlayer[global.playerAtual][1]
	}
	else{
		sprite_index=skinsPlayer[global.playerAtual][0]
	}
}

/*
if y <= 0{
	y += velocidade
}

if y >= room_height{
	y-= velocidade
}*/

if x <= 0{
	x += global.velocidade
}

if x >= room_width{
	x -= global.velocidade
}


velocidadeVertical += gravidade

if place_meeting(x, y + velocidadeVertical, objColisao){
	while ! place_meeting(x, y + sign(velocidadeVertical), objColisao){
		y += sign(velocidadeVertical)
	}
	velocidadeVertical = 0
}

y += velocidadeVertical

if (keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space)) and place_meeting(x, y + 10, objColisao){
	velocidadeVertical -= global.tamanhoPulo
}

if keyboard_check_pressed(ord("Q")) and global.tempoDash == 0 and global.tampoAtaque != 3{
	velocidadeHorizontal = velocidadeDash * image_xscale
	sprite_index= skinsPlayer[global.playerAtual][2]	
	global.tempoDash = 15;
	alarm[11] = 60 
	
}

if velocidadeHorizontal != 0{
	velocidadeHorizontal -= 0.5 * sign(velocidadeHorizontal) 
	
	//Quando chega a zero, volta ao sprite normal
	if velocidadeHorizontal == 0{
		sprite_index = skinsPlayer[global.playerAtual][0]
	}
}

if x > 0 and x < room_width{
	x += velocidadeHorizontal
}


if global.playerAtual > 2 and keyboard_check_pressed(ord("R")) and global.tampoAtaque == 0 and global.tempoDash != 15{
	velocidadeHorizontal = velocidadeAtaque * image_xscale
	sprite_index = skinsPlayer[global.playerAtual, 3]
	
	global.tempoDash = 3;
	alarm[10] = 60 
	
}