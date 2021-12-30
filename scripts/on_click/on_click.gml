function on_click()
{
	//show_debug_message("Button clicked: " + text);
	switch(text)
	{
		case "Play":
			room_goto_next();
		break;
		case "Quit":
			game_end();
		break;
	}
}