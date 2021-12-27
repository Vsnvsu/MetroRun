//Расчет и применение максимально допустимого уровня АА
//https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Cameras_And_Display/display_reset.htm
function window_apply_aa(){
	var t_aa = 0;
	if (display_aa <= 2) {
		t_aa = 2
	} else if (display_aa <= 6) {
		t_aa = 4
	} else if (display_aa <= 14) {
		t_aa = 8
	}
	display_reset(t_aa, true)
}