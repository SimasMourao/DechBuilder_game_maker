//MOUSE ESTA EM CIMA DA CARTA 
mouse_sobre = position_meeting(mouse_x, mouse_y, id);
/*NO TERCEIRO ARGUMENTO, DEVO UTILIZAR A VARIAVEL ID,
PARA QUE SEJA POSSIVEL DIFERENCIAR CADA OBJ_CARTA DENTRO DA LAYER
INSTANCES. O QUE NÃO É POSSIVEL SE UTILIZAR COM O OBJ_CARTAS*/

if (mouse_sobre){
	escala = 1.12;
	
	//serve para definr a quantidade de vezes que a animação sera exibida
	if (img < 30){
		img += .7;
	}

}

else{
	img = 0
	escala = 1;
}

//Alterando escala

//O terceio argumento de lerp, dita o quão rapida a escala do objeto vai se aproximar do 
//segundo argumento
image_xscale = lerp(image_xscale, escala, 0.1);
image_yscale = lerp(image_yscale, escala, 0.1);
