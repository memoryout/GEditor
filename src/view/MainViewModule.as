package view
{
	import smartmvc.events.sEventData;
	import smartmvc.module.view.sViewModule;
	
	import spark.core.SpriteVisualElement;
	
	import view.editor.EditorView;
	
	public class MainViewModule extends sViewModule
	{
		private var _stageRoot:				Object;
		
		public function MainViewModule()
		{
			super();
		}
		
		public function init(stageRootObject:Object):void
		{
			_stageRoot = stageRootObject;
			
			this.addListener(MainViewEvents.VIEW_INIT, handlerInit);
		}
		
		private function handlerInit(e:sEventData):void
		{
			var editor:EditorView = new EditorView();
			var sprView:SpriteVisualElement;
			
			if(_stageRoot.editorView)
			{
				sprView = new SpriteVisualElement();
				sprView.addChild( editor );
				_stageRoot.editorView.addElement( sprView );
			}
			else
			{
				return;
			}
			
			this.send(MainViewEvents.EVENT_VIEW_INIT_COMPLETE);
		}
	}
}