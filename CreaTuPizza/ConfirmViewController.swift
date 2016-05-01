//
//  ConfirmViewController.swift
//  CreaTuPizza
//
//  Created by Veronica Marchan on 1/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import UIKit

class ConfirmViewController: UINavigationController {

    
    var sizePizza : String!
    var roughType: String!
    var cheeseType: String!
//    var ingredients: [String]!
    var ingredient : String!
    
    @IBOutlet var confirmText: UILabel!
    @IBOutlet var confirmButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Confirmar"
//        confirmButton.setTitle("Confirmar", forState: UIControlState.Normal)
        confirmButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        confirmButton.backgroundColor = UIColor.brownColor()
        confirmButton.layer.cornerRadius = 20
        confirmButton.layer.borderWidth = 0
        confirmButton.layer.borderColor = UIColor.blackColor().CGColor
        confirmButton.layer.shadowColor = UIColor.grayColor().CGColor
        confirmButton.layer.shadowOpacity = 1
        confirmButton.layer.shadowOffset = CGSizeMake(1, 1)
        
        self.confirmText.text = "Tamaño: \(self.sizePizza).\nMasa: \(self.roughType).\nQueso: \(self.cheeseType).\nIngredientes: \(self.ingredient)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
