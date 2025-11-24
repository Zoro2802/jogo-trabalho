if global.pontos >= 2{
	visible = true
}

if mouse_check_button_pressed(mb_left) and visible{
	if paginaAtual < paginaMaxima - 1{
		paginaAtual++
	}
	else{
		paginaAtual = paginaMinima
	}
}