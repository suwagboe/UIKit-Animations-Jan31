//
//  PropertyAnimatorController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 2/4/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class PropertyAnimatorController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var slider: UISlider!
    // need an instance to a UIViewPropertyAnimator
    private var animator: UIViewPropertyAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // instantiate the animator property
        animator = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut, animations: {
            //here is where we declare the animation...
            
        })
        
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        
        animator.fractionComplete = CGFloat(sender.value)
        
    }
    

}
