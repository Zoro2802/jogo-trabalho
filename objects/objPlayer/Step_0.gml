
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

if keyboard_check(vk_anykey){
sprite_index = sprPlayerCorrendo
}
else{
	sprite_index= sprPlayer
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