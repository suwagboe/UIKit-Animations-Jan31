//
//  AnimationsTabController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    private lazy var sampleAnimationVC: SampleAnimationsViewController = {
        let viewcontroller = SampleAnimationsViewController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        
        return viewcontroller
    }()
    
    private lazy var constraintsAnimationVC: ConstraintsAnimationController = {
        let viewcontroller = ConstraintsAnimationController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Constraints Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewcontroller
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // set view controllers for the tab bar.. in the app there will be two colors
        
        // subclass it in order to gain access to the other view controller programmatically.
        // they need to instances()of the controller otherwise it wont work
        viewControllers = [sampleAnimationVC, constraintsAnimationVC]
        
    //viewControllers = [SampleAnimationsViewController(), ConstraintsAnimationController()]
        
    }
    
    
    
}
