package module
{
	import module.editor.EditorModule;
	import module.file.FileManager;
	
	import smartmvc.events.sEventData;
	import smartmvc.module.core.sCoreModule;
	import smartmvc.task.Task;
	import smartmvc.task.TaskManager;
	
	public class AppCoreModule extends sCoreModule
	{
		public function AppCoreModule()
		{
			super();
			
			initModules();
			initListeners();
		}
		
		private function initModules():void
		{
			new EditorModule();
			new FileManager();
		}
		
		private function initListeners():void
		{
			this.addListener(CoreCommands.OPEN_SOURCE_FILE, handlerTaskListener);
		}
		
		
		
		
		private function handlerTaskListener(e:sEventData):void
		{
			var task:Task = TaskManager.get().createTask( e.event );
			task.data = e.data;
			
			var status:uint = TaskManager.get().executeTask( task );
			
			if(status == TaskManager.MODULE_DISABLED)
			{
				
			}
			else if( status == TaskManager.NO_EXECUTION_MODULE )
			{
				
			}
		}
	}
}