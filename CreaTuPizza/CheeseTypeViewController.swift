//
//  CheeseTypeViewController.swift
//  CreaTuPizza
//
//  Created by Veronica Marchan on 1/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import UIKit

class CheeseTypeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var sizePizza : String!
    var roughType: String!
    var selectedCheese : String!
    let cheeseType = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Queso"
        self.table.delegate = self
        self.table.dataSource = self
        self.table.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cheeseType.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell3", forIndexPath: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = self.cheeseType[row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedCheese = self.cheeseType[indexPath.row]
        
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "CheeseSegue" {
            
            let nextPage = segue.destinationViewController as! IngredientsViewController
            nextPage.sizePizza = self.sizePizza
            nextPage.roughType = self.roughType
            nextPage.cheeseType = self.selectedCheese
        }
    }
}
