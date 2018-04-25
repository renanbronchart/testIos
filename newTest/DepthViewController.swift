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
    var overlayView: UIView!
    
    @IBOutlet weak var alertView: UIView!
    var animator:UIDynamicAnimator? = nil;
    var snap: UISnapBehavior!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }

    @IBAction func showAlert(_ sender: Any) {
        createOverlay()
        
        let layer = alertView.layer
        
        layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1, execute: {
            self.animator = UIDynamicAnimator(referenceView: self.view)
            self.snap = UISnapBehavior(item: self.alertView, snapTo: self.view.center)
            self.animator?.addBehavior(self.snap)
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createOverlay() {
        overlayView = UIView(frame: self.view.bounds)
        let layer = overlayView.layer
        
        layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor

        self.view.insertSubview(overlayView, belowSubview: alertView)
        
        UIView.animate(withDuration: 0.3, animations: {
            layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6).cgColor
            
        })
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showCounter.text = "\(appDelegate?.counter ?? 0)"
        // Do any additional setup after loading the view.

        // Create the dark background view and the alert view
        //        createAlert()
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
