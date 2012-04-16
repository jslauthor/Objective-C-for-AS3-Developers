package com.leonardsouza.example.events
{
	import flash.events.Event;
	
	public class DataEvent extends Event
	{
		
		public static const POPULATE_DATA:String = "populateData";
		public static const DATA_POPULATED:String = "dataPopulated";
		
		public function DataEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new DataEvent(type, bubbles, cancelable);
		}
		
	}
}