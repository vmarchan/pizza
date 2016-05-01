//
//  ConfirmViewController.swift
//  CreaTuPizza
//
//  Created by Veronica Marchan on 2/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet var text: UILabel!
    @IBOutlet var buttonAccept: UIButton!
    @IBOutlet var buttonBack: UIButton!
    
    var sizePizza : String!
    var roughType: String!
    var cheeseType: String!
    var ingredients: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Confirmación"
        
        buttonAccept.setTitle("Aceptar", forState: UIControlState.Normal)
        buttonAccept.backgroundColor = UIColor.brownColor()
        buttonAccept.layer.cornerRadius = 20
        buttonAccept.layer.borderWidth = 0
        buttonAccept.layer.borderColor = UIColor.blackColor().CGColor
        buttonAccept.layer.shadowColor = UIColor.grayColor().CGColor
        buttonAccept.layer.shadowOpacity = 1
        buttonAccept.layer.shadowOffset = CGSizeMake(1, 1)
        
        buttonBack.setTitle("Volver", forState: UIControlState.Normal)
        buttonBack.backgroundColor = UIColor.brownColor()
        buttonBack.layer.cornerRadius = 20
        buttonBack.layer.borderWidth = 0
        buttonBack.layer.borderColor = UIColor.blackColor().CGColor
        buttonBack.layer.shadowColor = UIColor.grayColor().CGColor
        buttonBack.layer.shadowOpacity = 1
        buttonBack.layer.shadowOffset = CGSizeMake(1, 1)
        
        self.text.text = "TAMAÑO: \(self.sizePizza).\n\nMASA: \(self.roughType).\n\nQUESO: \(self.cheeseType).\n\nINGREDIENTES: \(self.ingredients)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backActionButton(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
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
