//
//  ResultViewController.swift
//  CreaTuPizza
//
//  Created by Veronica Marchan on 2/5/16.
//  Copyright © 2016 vmarchan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var textFinal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Resultado"
        self.navigationItem.setHidesBackButton(true, animated:true);
        
        self.textFinal.text = "¡Felicidades!\n\nTu pedido se ha realizado correctamente. En breve le llegará a su domicilio la sabrosa pizza que ha pedido.\n\n¡Que aproveche!"
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
