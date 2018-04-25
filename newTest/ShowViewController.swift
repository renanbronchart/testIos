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
    
    var animator:UIDynamicAnimator? = nil;
    let gravity = UIGravityBehavior()
    var attachment: UIAttachmentBehavior!
    
    let collider = UICollisionBehavior()
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    @IBAction func deplaceLabel(_ sender: Any) {
        animator = UIDynamicAnimator(referenceView: self.view)
//        attachment = UIAttachmentBehavior(item: buttonLabel, attachedTo: self.view)
//        animator?.addBehavior(attachment)
        
        gravity.gravityDirection = CGVector(dx: 0, dy: 1.0)
        animator?.addBehavior(gravity)
        
        gravity.addItem(showCouter)
        
        //adding the collision behavior
        
        collider.addItem(showCouter)
        collider.addItem(buttonLabel)
        
        collider.translatesReferenceBoundsIntoBoundary = true
        animator?.addBehavior(collider)
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
            })
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
