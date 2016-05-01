//
//  IngredientsViewController.swift
//  CreaTuPizza
//
//  Created by Veronica Marchan on 1/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var sizePizza : String!
    var roughType: String!
    var cheeseType: String!
//    var selectedIngredients: [String] = []
    var selectedIngredient : String!
    
    let ingredients = ["Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa", "Atún", "Champiñones"]
    
    @IBOutlet var table: UITableView!
    @IBOutlet var buttonConfirm: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Ingredientes"
        self.table.delegate = self
        self.table.dataSource = self
        self.table.tableFooterView = UIView()
        
        buttonConfirm.setTitle("Confirmar", forState: UIControlState.Normal)
        buttonConfirm.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        buttonConfirm.backgroundColor = UIColor.brownColor()
        buttonConfirm.layer.cornerRadius = 20
        buttonConfirm.layer.borderWidth = 0
        buttonConfirm.layer.borderColor = UIColor.blackColor().CGColor
        buttonConfirm.layer.shadowColor = UIColor.grayColor().CGColor
        buttonConfirm.layer.shadowOpacity = 1
        buttonConfirm.layer.shadowOffset = CGSizeMake(1, 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ingredients.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell4", forIndexPath: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = self.ingredients[row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        if self.selectedIngredients.count == 0 {
//            self.selectedIngredients = [self.ingredients[indexPath.row]]
//        } else {
//            if !self.selectedIngredients.contains(self.ingredients[indexPath.row]) {
//                self.selectedIngredients.append(self.ingredients[indexPath.row])
//            }
//        }
        
        self.selectedIngredient = self.ingredients[indexPath.row]
        
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "IngredientsSegue" {
            
            let nextPage = segue.destinationViewController as! ConfirmViewController
            nextPage.sizePizza = self.sizePizza
            nextPage.roughType = self.roughType
            nextPage.cheeseType = self.cheeseType
//            nextPage.ingredients = self.selectedIngredients
            nextPage.ingredient = self.selectedIngredient
        }
    }

}
