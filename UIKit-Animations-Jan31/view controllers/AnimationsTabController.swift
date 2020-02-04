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
        viewcontroller.tabBarItem = UITabBarItem(title: "Sample", image: UIImage(systemName: "1.circle"), tag: 0)
        
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
        
        viewController.tabBarItem = UITabBarItem(title: "Constraints", image: UIImage(systemName: "2.circle"), tag: 1)
        
        return viewController
    }()
        // double checking this file is up to date.
    
    private lazy var transistionAnimationVC: TransistionAnimationsController = {
        let constraintsAnimationStoryboard = UIStoryboard(name: "TransistionAnimations", bundle: nil)
               guard let viewController = constraintsAnimationStoryboard.instantiateViewController(withIdentifier: "TransistionAnimationsController") as? TransistionAnimationsController else {
                   fatalError("couldnt access the TransistionAnimationsController")
               }
           viewController.tabBarItem = UITabBarItem(title: "Transitions", image: UIImage(systemName: "3.circle"), tag: 2)
           
           return viewController
       }()

    private lazy var propertyAnimatorVC: PropertyAnimatorController = {
        let constraintsAnimationStoryboard = UIStoryboard(name: "PropertyAnimator", bundle: nil)
               guard let viewController = constraintsAnimationStoryboard.instantiateViewController(withIdentifier: "PropertyAnimatorController") as? PropertyAnimatorController else {
                   fatalError("couldnt access the PropertyAnimatorController")
               }
           viewController.tabBarItem = UITabBarItem(title: "Animator", image: UIImage(systemName: "4.circle"), tag: 3)
           
           return viewController
       }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set view controllers for the tab bar.. in the app there will be two colors
        
        // subclass it in order to gain access to the other view controller programmatically.
        // they need to instances()of the controller otherwise it wont work
        viewControllers = [sampleAnimationVC, constraintsAnimationVC, transistionAnimationVC, propertyAnimatorVC]
        
    //viewControllers = [SampleAnimationsViewController(), ConstraintsAnimationController()]
        
    }
    
    
    
}
