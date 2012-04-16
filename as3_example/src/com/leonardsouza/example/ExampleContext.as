package com.leonardsouza.example
{
	import com.leonardsouza.example.controllers.PopulateDataCommand;
	import com.leonardsouza.example.events.DataEvent;
	import com.leonardsouza.example.models.SomeModel;
	import com.leonardsouza.example.services.ISomeService;
	import com.leonardsouza.example.services.SomeService;
	import com.leonardsouza.example.views.components.ListView;
	import com.leonardsouza.example.views.mediators.ListViewMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	public class ExampleContext extends Context
	{

		override public function startup():void
		{
			commandMap.mapEvent(DataEvent.POPULATE_DATA, PopulateDataCommand, DataEvent);
			
			injector.mapSingleton(SomeModel);
			injector.mapSingletonOf(ISomeService, SomeService);
			
			mediatorMap.mapView(ListView, ListViewMediator);	
		}
		
	}
}