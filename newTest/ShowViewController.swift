//
//  ShowViewController.swift
//  newTest
//
//  Created by Renan Bronchart on 24/04/2018.
//  Copyright © 2018 Renan Bronchart. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var showCouter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        showCouter.text = "\(appDelegate?.counter ?? 0)"
        
//        showCouter.backgroundColor = UIColor.red.withAlphaComponent(0.6)
        
        let layer = showCouter.layer
        
        layer.cornerRadius = 6
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.40, green: 0.2, blue: 0.8, alpha: 0.8).cgColor
        layer.backgroundColor = UIColor(red: 0.40, green: 0.2, blue: 0.8, alpha: 0.8).cgColor
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: {
            
            UIView.animate(withDuration: 2, animations: {
                layer.backgroundColor = UIColor(red: 0.9, green: 0.2, blue: 0.2, alpha: 0.8).cgColor
            }) { (f) in
                print("finished")
            }
        })

        // Do any additional setup after loading the view.
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
