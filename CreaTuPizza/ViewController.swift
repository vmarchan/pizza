//
//  ViewController.swift
//  CreaTuPizza
//
//  Created by Veronica Marchan on 1/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonEnter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        buttonEnter.setTitle("Comenzar", forState: UIControlState.Normal)
        buttonEnter.backgroundColor = UIColor.brownColor()
        buttonEnter.layer.cornerRadius = 20
        buttonEnter.layer.borderWidth = 0
        buttonEnter.layer.borderColor = UIColor.blackColor().CGColor
        buttonEnter.layer.shadowColor = UIColor.grayColor().CGColor
        buttonEnter.layer.shadowOpacity = 1
        buttonEnter.layer.shadowOffset = CGSizeMake(1, 1)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "StartSegue" {

        }
    }

}

