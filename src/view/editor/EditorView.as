package view.editor
{
	import flash.display.Sprite;
	
	public class EditorView extends Sprite
	{
		private var _module:			EditorViewModule;
		
		public function EditorView()
		{
			super();
			
			_module = new EditorViewModule(this);
		}
	}
}