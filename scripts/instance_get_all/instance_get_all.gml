// Поиск всех экземпляров объекта и вывод их в одном массиве
function instance_get_all(object){
	var arr = []
	for (var i = 0; i < instance_number(object); ++i;)
	{
		array_push(arr, instance_find(object, i))
	}
	return arr
}