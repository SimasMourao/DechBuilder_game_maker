//SEMPRE QUE ENTER FOR APERTADO, O JOGO É REINICIADO
if (keyboard_check_pressed(vk_enter)){
	
	game_restart();
	global.baralho = [];
	global.mao = [];
	
	
	novas_cartas();
	preenche_mao();
}