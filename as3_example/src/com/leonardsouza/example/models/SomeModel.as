package com.leonardsouza.example.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class SomeModel extends Actor
	{
		public var data:ArrayCollection;
		
		public function SomeModel()
		{
			super();
			data = new ArrayCollection();
		}
	}
}