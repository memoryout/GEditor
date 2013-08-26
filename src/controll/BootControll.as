package controll
{
	import controll.editor.EditorControll;
	
	import module.AppCoreModule;
	
	import smartmvc.events.sEventData;
	import smartmvc.module.logic.sLogicModule;
	
	import view.MainViewEvents;
	
	public class BootControll extends sLogicModule
	{
		private var _rootObject:			Object;
		
		public function BootControll()
		{
			super();
		}
		
		public function init(rootObject:Object):void
		{
			_rootObject = rootObject;
			
			this.addViewListener(MainViewEvents.EVENT_VIEW_INIT_COMPLETE, handlerViewInitComplete);
			this.sendView(MainViewEvents.VIEW_INIT);
		}
		
		private function handlerViewInitComplete(e:sEventData):void
		{
			new AppCoreModule();
			
			new ApplicationControll();
			new EditorControll();
			new UserActionControll();
		}
	}
}