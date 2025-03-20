//CRIANDO A ESTRUTURA BÁSICA DA CARTA
function desenhar_carta(){
	//PRESTAR ATENÇÃO NA ORDEM EM QUE OS SPRITES ENTÃO SENDO DESENHADOS

	draw_sprite_ext(spr_carta_fundo, carta.tipo, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//desenhando a plaquinha do nome:
	draw_sprite_ext(spr_carta_nome, 0, x, y + 40, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//desenhando o nome da carta:
	//CENTRALIZANDO O TEXTO
	draw_set_halign(1);//horizontal: 0 é esquerda, 1 centro e 2 direita
	draw_set_valign(1);//verical: 0 é cima, 1´meio e 2 baixo
	
	draw_text_color(x, y + 40, carta.nome, c_black, c_black, c_black, c_black, image_alpha = 1);

	//É PRECISO RESETAR O ALINHAMENTO, PARA QUE OS PROXIMOS DRAW SIGAM O PADRÃO ANTERIOR
	draw_set_halign(0);//horizontal
	draw_set_valign(0);//verical

	//desenhando o quadro da carta
	draw_sprite_ext(spr_carta_desenho, carta.img_desenho, x, y - 15, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//denehando espaço do icone
	draw_sprite_ext(spr_icone_espaco, carta.espaco_icone, x - 38, y - 46, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

	//denehando icone	
	draw_sprite_ext(spr_icone, carta.icone, x - 28, y - 36, image_xscale * 0.7, image_yscale * 0.7, image_angle, image_blend, image_alpha);

}