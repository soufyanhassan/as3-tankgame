package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.geom.Point;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author Soufyan Hassan
	 */
	public class Tank extends MovieClip
	{
		private var tankBodyArt:MovieClip;
		private var tankTurretArt:TankTurretArt;
		
		private var conrolDir:Point;
		
		
		public function Tank() 
		{	
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			
			tankBodyArt = new TankBodyArt(); //instantieren van de Class
			this.addChild(tankBodyArt);
			tankTurretArt = new TankTurretArt();
			this.addChild(tankTurretArt);
			
			conrolDir = new Point(0,0);
			
			
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			this.addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			
			this.x += conrolDir.x * 5;
			this.y += conrolDir.y * 5;
		}
		
		private function onKeyUp(e:KeyboardEvent):void 
		{
			if (e.keyCode == Keyboard.W)
			{
				//speler heeft de W losgelaten
				
				conrolDir.y = -1;
			}
			if (e.keyCode == Keyboard.A)
			{
				//speler heeft de W losgelaten
				
				conrolDir.x = -1;
			}
			if (e.keyCode == Keyboard.S)
			{
				//speler heeft de W losgelaten
				
				conrolDir.y = 1;
			}
			if (e.keyCode == Keyboard.D)
			{
				//speler heeft de W losgelaten
				
				conrolDir.x = 1;
			}
		}
		
		private function onKeyDown(e:KeyboardEvent):void 
		{
			if (e.keyCode == Keyboard.W)
			{
				//speler drukt op W
				
				conrolDir.y = 0;
			}
			if (e.keyCode == Keyboard.A)
			{
				//speler drukt op W
				
				conrolDir.x = 0;
			}
			if (e.keyCode == Keyboard.S)
			{
				//speler drukt op W
				
				conrolDir.y = 0;
			}
			if (e.keyCode == Keyboard.D)
			{
				//speler drukt op W
				
				conrolDir.x = 0;
			}
		} 
		
	}

}