// Объявление основных цветов игрового поля через глобальные переменные
// Заметка. В GML цвет кодируется стандартным HEX-кодом, но расположенным в обратном порядке.
// Вместо RGBA используется ABGR.

globalvar Colors_Background;
Colors_Background = $FFEBF1F3

globalvar Colors_Outline;
Colors_Outline = $FFC7CACA

globalvar Colors_Active;
Colors_Active = $FF282D38

// Заготовка на будущее, если появится необходимость изменять цветовую палитру на лету
// или редактировать утвержденную цветовую схему
globalvar BasicColors;
BasicColors = [
	$FFC3C5F2,
	$FFDECCC1,
	$FFC8DEBA,
	$FFF3E3BF
]



