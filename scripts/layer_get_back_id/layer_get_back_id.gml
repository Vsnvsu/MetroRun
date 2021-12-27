//Объединение поиска layer_id и back_id для получения последнего через название слоя
function layer_get_back_id(layer_name){
	return layer_background_get_id(layer_get_id(layer_name))
}