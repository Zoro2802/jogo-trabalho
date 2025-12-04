with(instance_create_layer(x + velocidadeAtaque, y,"Instances" , objCorteVoadorDash)){
	if sign(other.image_xscale){
		direction = 0
	}
	else{
		direction = 180
	}
		
	image_angle = direction
		
	vooAtaque = global.velocidade * 5
		
	speed = vooAtaque
}