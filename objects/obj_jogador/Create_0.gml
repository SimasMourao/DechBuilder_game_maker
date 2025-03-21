novas_cartas();
preenche_mao();

for (var i = 0; i <= 4; i++){
	var _carta = instance_create_layer(80 + 120 * i, 260, layer, obj_carta);
	
	_carta.carta = global.mao[i];
}