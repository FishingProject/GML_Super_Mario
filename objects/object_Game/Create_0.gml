/// Init
tilesize = 16;											// size of tiles
map = layer_tilemap_get_id("Collisions");				// this will be the layer we use for collisions
mountains = layer_get_all_elements("Tiles_Mountains");	// all the mountains sprites
trees = layer_get_all_elements("Tiles_Trees");			// all the trees sprites
clouds = layer_get_all_elements("Tiles_Clouds");		// all the clouds sprites
