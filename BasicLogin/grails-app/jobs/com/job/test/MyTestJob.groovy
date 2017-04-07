package com.job.test

class MyTestJob {

	static triggers = {
		simple name:'simpleTrigger', startDelay:10000, repeatInterval: 30000, repeatCount: 10
		//cron name: 'myTrigger', cronExpression: "0/6 0 0 * * ?"
	  }
	 def group = "MyGroup"
	 def description = "Example job with Cron Trigger"
	 def execute(){
	   print "Job run!"
	 }
}
