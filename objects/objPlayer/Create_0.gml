if ! variable_global_exists("velocidade"){
	global.velocidade = 4
}

if ! variable_global_exists("tamanhoPulo"){
	global.tamanhoPulo = 6 
}

global.pontos = 0
gravidade = 0.5

velocidadeVertical = 0

    

velocidadeHorizontal = 0

velocidadeDash = 10

global.tempoDash = 0

mostrar = false

//Armazena as possiveis skins do player
skinsPlayer= [
			 [sprPlayer, sprPlayerCorrendo, sprPlayerDash],
			 [sprPlayerEspadaNasCostas, sprPlayerEspadaCorrendo, sprPlayerDashEspada],
			 [sprPlayerSapato, sprPlayerCorrendoSapato, sprPlayerDashSapato]
			 ]
//Armazena qual player deve ser mostrado
if !variable_global_exists("playerAtual"){
	global.playerAtual = 0
}
			 
