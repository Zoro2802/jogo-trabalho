tamanhoPulo = 12
/*
if keyboard_check(vk_down) or keyboard_check(ord("S")){
	y += velocidade
}
*/

if keyboard_check_direct(vk_left) or keyboard_check(ord("A")){
	x -= velocidade

	 if image_xscale > 0{
		image_xscale *= -1
	 }
}

if keyboard_check(vk_right) or keyboard_check(ord("D")){
	x += velocidade
	
	if image_xscale < 0{
		image_xscale *= -1
	}
}

//Não muda o sprite enquanto estiver dando dash
if sprite_index != sprPlayerDash{
	if keyboard_check(vk_anykey){
		sprite_index = sprPlayerEspadaCorrendo
	}
	else{
		sprite_index= sprPlayerEspadaNasCostas
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
	x += velocidade
}

if x >= room_width{
	x -= velocidade
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
	velocidadeVertical -= tamanhoPulo
}

if keyboard_check_pressed(ord("Q")) and global.tempoDash == 0{
	velocidadeHorizontal = velocidadeDash * image_xscale
	sprite_index=sprPlayerDashEspada
	
	global.tempoDash = 15;
	alarm[11] = 60 
	
}

if velocidadeHorizontal != 0{
	velocidadeHorizontal -= 0.5 * sign(velocidadeHorizontal) 
	
	//Quando chega a zero, volta ao sprite nomal
	if velocidadeHorizontal == 0{
		sprite_index = sprPlayerEspadaNasCostas
	}
}

if x > 0 and x < room_width{
	x += velocidadeHorizontal
}
