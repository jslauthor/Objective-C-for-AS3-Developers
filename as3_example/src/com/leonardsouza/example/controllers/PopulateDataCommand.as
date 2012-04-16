package com.leonardsouza.example.controllers
{
	import com.leonardsouza.example.services.ISomeService;
	
	import org.robotlegs.mvcs.Command;
	
	public class PopulateDataCommand extends Command
	{

		[Inject] public var service:ISomeService;
		
		override public function execute():void
		{
			service.populateData();
		}
	}
}