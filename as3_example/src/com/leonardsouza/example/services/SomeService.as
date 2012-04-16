package com.leonardsouza.example.services
{
	import com.leonardsouza.example.events.DataEvent;
	import com.leonardsouza.example.models.SomeModel;
	import com.leonardsouza.example.models.vo.SomeObjectVO;
	
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class SomeService extends Actor implements ISomeService
	{
		[Inject] public var model:SomeModel;
		
		/*
		** Constructor similar to the init method in Objective-C
		*/
		
		public function SomeService()
		{
			super();
		}
		
		/*
		** Class Methods
		*/
		
		// Ignore method arguments, they are there to demonstrate how they would match in Objective-C
		public function aServiceCall(someVariable:Boolean = false, andAnother:* = null):ArrayCollection
		{
			// Pretend that the initial service call from populateData was for a login auth, and now this is grabbing data from the session
			return model.data;		
		}
		
		public function populateData():void
		{
			for (var i:int = 0; i < 100; i++)
			{
				var object:SomeObjectVO = new SomeObjectVO();
				model.data.addItem(object);
			}
			
			var count:int = 0;
			model.data.source.forEach(function f(item:*, index:int, array:Array):void
			{
				count++;
				SomeObjectVO(item).title = "Item " + count;
			});
			
			eventDispatcher.dispatchEvent(new DataEvent(DataEvent.DATA_POPULATED));		
		}
		
		
	}
}