package com.leonardsouza.example.services
{
	import mx.collections.ArrayCollection;

	public interface ISomeService
	{
		function aServiceCall(someVariable:Boolean = false, andAnother:* = null):ArrayCollection;
		function populateData():void;
	}
}