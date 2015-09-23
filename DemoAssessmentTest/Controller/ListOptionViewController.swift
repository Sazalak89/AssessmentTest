//
//  ListOptionViewController.swift
//  DemoAssessmentTest
//
//  Created by Zalak Patel on 22/09/15.
//  Copyright (c) 2015 Solution Analysts Pvt. Ltd. All rights reserved.
//

import UIKit

class ListOptionViewController: UIViewController {
	
	//Setting initial button text value
	
	var arrbtnBigDescription:NSMutableArray = ["Baby is able to turn shoulders and roll over." , "Baby is unable to lift body up with arms." , "Baby does not move arms."]
	var arrbtnSmallDescription:NSMutableArray = ["Baby moves arms."]
	
	//MARK:- View life cycle methods
	override func viewDidLoad() {
		super.viewDidLoad()
		
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
	//MARK:- Back button clicked
	@IBAction func btnBackClicked(sender: AnyObject) {
		self.navigationController?.popViewControllerAnimated(true)
	}
	
	//MARK:- UITableview delegate methods
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
	{
		if indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 3
		{
			return 98.0
		}
		else
		{
			return 68.0
		}
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
	{
		
		return 4 // returns 4 static cells
	}
	
	func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
	{
		if indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 3
		{
			var cell = tableView.dequeueReusableCellWithIdentifier("bigDescriptiveCell", forIndexPath: indexPath) as! bigDescriptiveCell
			cell.selectionStyle = UITableViewCellSelectionStyle.None
			cell.IBbtnBigDescriptive.tag = indexPath.row
			
			cell.IBbtnBigDescriptive.titleLabel?.numberOfLines = 0
			if indexPath.row == 3
			{
				cell.IBbtnBigDescriptive.setTitle("\(arrbtnBigDescription[indexPath.row - 1])", forState: UIControlState.Normal)
			}
			else
			{
				cell.IBbtnBigDescriptive.setTitle("\(arrbtnBigDescription[indexPath.row])", forState: UIControlState.Normal)
			}
			return cell
		}
		else
		{
			var cell = tableView.dequeueReusableCellWithIdentifier("smallDescriptiveCell", forIndexPath: indexPath) as! smallDescriptiveCell
			
			cell.IBbtnSmallDescriptive.titleLabel?.numberOfLines = 0
			cell.IBbtnSmallDescriptive.tag = indexPath.row
			cell.selectionStyle = UITableViewCellSelectionStyle.None
			cell.IBbtnSmallDescriptive.setTitle("\(arrbtnSmallDescription[0])", forState: UIControlState.Normal)
			return cell
		}
		
	}
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
	}
	
	//MARK:- button action events
	@IBAction func btnBigDescriptiveClicked(sender: AnyObject) {
		if sender.tag == 0 // first button clicked
		{
			let storyBoard = UIStoryboard(name: "Main", bundle: nil)
			
			var bigDescriptivecontroller: BigDescriptivecontroller = storyBoard.instantiateViewControllerWithIdentifier("BigDescriptivecontroller") as! BigDescriptivecontroller
			
			self.navigationController?.pushViewController(bigDescriptivecontroller as UIViewController, animated: true)
			
		}
		else // rest buttons clicked
		{
			let storyBoard = UIStoryboard(name: "Main", bundle: nil)
			
			var rollOverController: RollOverController = storyBoard.instantiateViewControllerWithIdentifier("RollOverController") as! RollOverController
			
			self.navigationController?.pushViewController(rollOverController as UIViewController, animated: true)
		}
		
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
