//
//  DescriptiveViewController.swift
//  DemoAssessmentTest
//
//  Created by Zalak Patel on 22/09/15.
//  Copyright (c) 2015 Solution Analysts Pvt. Ltd. All rights reserved.
//

import UIKit

class DescriptiveViewController: UIViewController {
	
	@IBOutlet weak var IBviewDescriptive: UIView!
	//MARK:- View life cycle methods
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setViewLayout()
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK:- Setting Status bar light
	override func preferredStatusBarStyle() -> UIStatusBarStyle{
		
		return UIStatusBarStyle.LightContent
	}
	//MARK:- Setting view layout design
	func setViewLayout()
	{
		IBviewDescriptive.layer.cornerRadius = 8.0
	}
	//MARK:- Back button clicked
	@IBAction func btnBackClicked(sender: AnyObject) {
		self.navigationController?.popViewControllerAnimated(true)
	}
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
