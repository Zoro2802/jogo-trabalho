velocidade = 4
global.pontos = 0
gravidade = 0.5

velocidadeVertical = 0

tamanhoPulo = 6       

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
			 
