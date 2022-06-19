if (mouse_x != _xprevious || mouse_y != _yprevious) on_move.invoke();
if (mouse_check_button_pressed(mb_any)) click.invoke(mouse_button);