package view.editor
{
	import smartmvc.module.view.sViewModule;
	
	public class EditorViewModule extends sViewModule
	{
		private var _view:				EditorView;
		
		public function EditorViewModule(view:EditorView)
		{
			super();
			
			_view = view;
		}
	}
}