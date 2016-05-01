//
//  SelectSizeViewController.swift
//  CreaTuPizza
//
//  Created by Veronica Marchan on 1/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import UIKit

class SelectSizeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let sizePizza = ["Pequeña", "Mediana", "Grande"]
    @IBOutlet var table: UITableView!
    var selectedSize : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.table.delegate = self
        self.table.dataSource = self
        self.table.tableFooterView = UIView()
        self.title = "Tamaño"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sizePizza.count
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = self.sizePizza[row]
        
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedSize = self.sizePizza[indexPath.row]

    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "SizeSegue" {
            
            let nextPage = segue.destinationViewController as! RoughTypeViewController
            nextPage.sizePizza = self.selectedSize
        }
    }
  

}
