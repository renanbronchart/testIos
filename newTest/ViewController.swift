//
//  ViewController.swift
//  newTest
//
//  Created by Renan Bronchart on 24/04/2018.
//  Copyright © 2018 Renan Bronchart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var topContraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func decrement(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        if ((appDelegate?.counter)! > 0) {
            appDelegate?.counter -= 1
            helloLabel.text = "\(appDelegate?.counter ?? 0)"
        } else {
            let alert = UIAlertController(title: "Euh.. Stop this !", message: "You can't decrement below 0", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        
    }
    
    @IBAction func increment(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        appDelegate?.counter += 1
        helloLabel.text = "\(appDelegate?.counter ?? 0)"
    }

    @IBAction func showDepth(_ sender: Any) {
        if let next = self.storyboard?.instantiateViewController(withIdentifier: "depth") as? DepthViewController {
            
            
            self.navigationController?.pushViewController(next, animated: true)
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        helloLabel.text = "\(appDelegate?.counter ?? 0)"
        
        let layer = helloLabel.layer
        
        layer.cornerRadius = 4
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.937254902, green: 0.7098039216, blue: 0.6, alpha: 0.8).cgColor
        layer.backgroundColor = UIColor(red: 0.937254902, green: 0.7098039216, blue: 0.6, alpha: 0.8).cgColor
        
        UIView.animate(withDuration: 4, animations: {
            self.topContraint.constant = 90
            self.view.layoutIfNeeded()
        })
    }


}

