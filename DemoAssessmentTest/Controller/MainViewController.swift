//
//  MainViewController.swift
//  DemoAssessmentTest
//
//  Created by Zalak Patel on 22/09/15.
//  Copyright (c) 2015 Solution Analysts Pvt. Ltd. All rights reserved.
//

import UIKit
import MediaPlayer
class MainViewController: UIViewController {
	
	
	@IBOutlet weak var IBVideoView: UIView!
	@IBOutlet weak var IBbtnPlayVideo: UIButton!
	var moviePlayer:MPMoviePlayerController = MPMoviePlayerController()
	
	//MARK:- View life cycle methods
	override func viewDidLoad() {
		super.viewDidLoad()
		setNavigationBar()
		// Do any additional setup after loading the view.
	}
	
	override func viewWillAppear(animated: Bool) {
		IBbtnPlayVideo.hidden = false
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK:- Setting Status bar light
	override func preferredStatusBarStyle() -> UIStatusBarStyle{
		
		return UIStatusBarStyle.LightContent
	}
	//MARK:- setting navigation bar
	func setNavigationBar()
	{
		self.navigationController?.navigationBarHidden = true
	}
	
	//MARK:- button action methods
	
	
	@IBAction func btnNextClicked(sender: UIButton) {
		
		moviePlayer.stop()
		moviePlayer.view.removeFromSuperview()

	}
	@IBAction func btnPlayVideo(sender: UIButton) {
		sender.hidden = true
		
		
		
		playVideo() // Play video using mpmovieplayercontroller
	}
	
	func playVideo()
	{
		let path = NSBundle.mainBundle().pathForResource("rollOver", ofType: "mp4")
		let pathURL = NSURL.fileURLWithPath(path!)
		moviePlayer.contentURL = pathURL
		moviePlayer.view.frame = IBVideoView.bounds
		moviePlayer.repeatMode = .None
		IBVideoView.addSubview(moviePlayer.view)
		moviePlayer.play()
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
