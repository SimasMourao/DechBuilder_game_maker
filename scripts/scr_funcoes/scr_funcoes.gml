//deixando o jogo aleatorio
randomize();

//CRIANDO A ESTRUTURA BÁSICA DA CARTA
function desenhar_carta(){
	//PRESTAR ATENÇÃO NA ORDEM EM QUE OS SPRITES ENTÃO SENDO DESENHADOS

	draw_sprite_ext(spr_carta_fundo, carta.tipo, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//desenhando a plaquinha do nome:
	draw_sprite_ext(spr_carta_nome, carta.img_nome, x, y + 40 * image_yscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//desenhando o nome da carta:
	//CENTRALIZANDO O TEXTO
	draw_set_halign(1);//horizontal: 0 é esquerda, 1 centro e 2 direita
	draw_set_valign(1);//verical: 0 é cima, 1´meio e 2 baixo
	
	//definido a fonte
	draw_set_font(fnt_pixel_nome);
	
	draw_text_transformed_color(x, y + 42 * image_yscale, carta.nome,image_xscale, image_yscale, image_angle, c_black, c_black, c_black, c_black, image_alpha = 1);
	
	//RESETANDO A FONTE QUE SERÁ USADA
	draw_set_font(-1);

	//É PRECISO RESETAR O ALINHAMENTO, PARA QUE OS PROXIMOS DRAW SIGAM O PADRÃO ANTERIOR
	draw_set_halign(0);//horizontal
	draw_set_valign(0);//verical

	//desenhando o quadro da carta
	draw_sprite_ext(spr_carta_desenho, carta.img_desenho, x, y - 15 * image_yscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//denehando espaço do icone
	draw_sprite_ext(spr_icone_espaco, carta.espaco_icone, x - 38 * image_xscale, y - 46 * image_yscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//denehando icone
	draw_sprite_ext(spr_icone, carta.icone, x - 28 * image_xscale, y - 36 * image_yscale, image_xscale * 0.7, image_yscale * 0.7, image_angle, image_blend, image_alpha);

}

//FUNÇÃO PARA CRIAR ALGUMAS CARTAS
function novas_cartas(){
	for(var i = 0; i < 20; i++){
	
	
		var _tipo = i % 8;
		var _nome = "nome " + string(i);
		var _img_nome = i % 5;
		var _img_desenho = i % 3;
		var _espaco_icone = i % 9;
		var _icone = i % ICONE.TOTAL;
	
		//CRIANDO A CARTA
		var _carta = new criar_carta(_tipo, _nome, _img_nome, _img_desenho, _espaco_icone, _icone);
	
		//inserindo a carta no baralho
		array_push(global.baralho, _carta);
	
	}
	//show_message(global.baralho);
}


function preenche_mao(){
	//Pegando algumas cartas do baralho e colocando na mao do jogador
	for(var i = 0; i < 5; i++){
		var _carta_atual = irandom(19);
	
		array_push(global.mao, global.baralho[_carta_atual]);
	}

	//show_message(global.mao);
}

