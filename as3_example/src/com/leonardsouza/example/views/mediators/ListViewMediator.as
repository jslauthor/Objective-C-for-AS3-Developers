package com.leonardsouza.example.views.mediators
{
	import com.leonardsouza.example.events.DataEvent;
	import com.leonardsouza.example.models.SomeModel;
	import com.leonardsouza.example.views.components.ListView;
	
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ListViewMediator extends Mediator
	{

		[Inject]
		public var view:ListView;
		
		[Inject]
		public var model:SomeModel;
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, DataEvent.DATA_POPULATED, dataPopulated);
			dispatch(new DataEvent(DataEvent.POPULATE_DATA));
		}
		
		protected function dataPopulated(event:DataEvent = null):void
		{
			view.listDataProvider = model.data;
		}
		
	}
}