//
//  DepthViewController.swift
//  newTest
//
//  Created by Renan Bronchart on 24/04/2018.
//  Copyright © 2018 Renan Bronchart. All rights reserved.
//

import UIKit

class DepthViewController: UIViewController {

    @IBOutlet weak var showCounter: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCounter.text = "\(appDelegate?.counter ?? 0)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
