//
//  ViewController.swift
//  AlternativeIconDemo
//
//  Created by Andy Wu on 4/16/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// MARK: life cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: action
	
	@IBAction func changeIcon(_ sender: UIButton) {
		let application = UIApplication.shared
		if application.supportsAlternateIcons {
			let num = arc4random_uniform(2) + 1
			let alternateIconName = "Test\(num)"
			
			print("alternate icon name --- \(alternateIconName)")
			UIApplication.shared.setAlternateIconName(alternateIconName, completionHandler: {error in
				if let err = error {
					print("error --- \(err.localizedDescription)")
				}
			})
		}
	}

}

