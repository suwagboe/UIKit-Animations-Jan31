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
        
        //step 1: get instance of storyboard
        let constraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        /*
        // before the actual view controller
        let viewcontroller = ConstraintsAnimationController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Constraints Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewcontroller
 */
        // step 2: instantiate view controller from the storyboard instace
        guard let viewController = constraintsAnimationStoryboard.instantiateViewController(withIdentifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("couldnt access the ConstraintsAnimationController")
        }
        
        viewController.tabBarItem = UITabBarItem(title: "Constraints Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        
        return viewController
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
