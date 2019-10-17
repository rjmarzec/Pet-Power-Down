if !(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), x + 32, y) == tileset1) 
{
	x += 32;
	event_perform_object(obj_pet, ev_user0, 0);
}
