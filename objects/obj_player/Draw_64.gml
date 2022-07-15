draw_set_color(c_red);
draw_set_alpha(1);
draw_set_halign(fa_left);

draw_text(10, 10, "-== Player ==-")
draw_text(10, 25, "x: " + string(x));
draw_text(10, 40, "y: " + string(y));
draw_text(10, 55, "state: " + state.get_name());
draw_text(10, 70, "-============-")