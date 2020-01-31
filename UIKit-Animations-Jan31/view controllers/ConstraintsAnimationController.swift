//
//  ConstraintsAnimationController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class ConstraintsAnimationController: UIViewController {

    // added the view constraint within the controller in order to gain access to it.
    @IBOutlet weak var viewYConstraint: NSLayoutConstraint!
   
    @IBOutlet weak var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
    }

    
    @IBAction func animateUpButton(_ sender: UIButton) {
        
        // animate button
        
        UIView.animate(withDuration: 0.3, delay: 00, usingSpringWithDamping: 1.0,initialSpringVelocity: 0.0, options: [], animations: {
            sender.transform =
                CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (done) in
            sender.transform = CGAffineTransform.identity
            
        }
        
        // we want it to up so inside of here it needs to be a negative value..
        
        viewYConstraint.constant -= 100
        // plus 100 .. removing 100 from the constraint
        
        // when we change the constraints in iOS and we need this chanfe to be animated we only need to animate self.view.layoutIfNeeded and the animatino will take place
        
        //layoutifNeeded will get called as the view is marked "dirst" by iOS, we inplementing self.view.layoutIsNeeded in the animation block will cause the animation
        
        print(box.frame.origin.y)
        
        if box.frame.origin.y < 100 {return}
        
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 5.0,options: [.curveEaseOut] , animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
    
    @IBAction func animateDownButton(_ sender: UIButton) {
        // animate button
        
        UIView.animate(withDuration: 0.3, delay: 00, usingSpringWithDamping: 1.0,initialSpringVelocity: 0.0, options: [], animations: {
            sender.transform =
                CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (done) in
            sender.transform = CGAffineTransform.identity
            
        }
        // to go down you need a positive value
        
        viewYConstraint.constant += 100
        // plus 100 .. adding 100
        
        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 5.0,options: [.curveEaseInOut] , animations: {
                   self.view.layoutIfNeeded()
               }, completion: nil)
    }
    
    

}
