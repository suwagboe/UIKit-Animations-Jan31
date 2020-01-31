//
//  AnimationsTabController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // set view controllers for the tab bar.. in the app there will be two colors
        
        // subclass it in order to gain access to the other view controller programmatically.
        // they need to instances()of the controller otherwise it wont work
        viewControllers = [SampleAnimationsViewController(), ConstraintsAnimationController()]
        
        
    }
    
    
    
}
