class Main extends hxd.App {
	var navigator:h2d.Bitmap;
	var ship:h2d.Bitmap;
	var square:h2d.Bitmap;
	var squareDirX = 1;

	override function init() {
		// web safe
		hxd.Res.initEmbed();

		var tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
		tf.text = "Hello Gamedev!";

		ship = new h2d.Bitmap(hxd.Res.player.toTile());
		ship.x = 100;
		ship.y = 100;
		ship.blendMode = h2d.BlendMode.Add;
		s2d.add(ship, 0);

		navigator = new h2d.Bitmap(hxd.Res.navigator.toTile());
		navigator.x = 132;
		navigator.y = 132;
		navigator.tile.dx = -32;
		navigator.tile.dy = -32;
		navigator.blendMode = h2d.BlendMode.Add;
		s2d.add(navigator, 0);

		square = new h2d.Bitmap(hxd.Res.square.toTile());
		square.x = 32;
		square.y = 132;
		square.tile.dx = -32;
		square.tile.dy = -32;
		square.blendMode = h2d.BlendMode.Add;
		s2d.add(square, 0);
	}

	override function update(dt:Float) {
		square.rotation += 0.05;
		square.x += 1 * squareDirX;

		if (square.x >= 235) {
			squareDirX = -squareDirX;
		} else if (square.x <= 31) {
			squareDirX = -squareDirX;
		}

		navigator.rotation += 0.025;
	}

	static function main() {
		new Main();
	}
}
