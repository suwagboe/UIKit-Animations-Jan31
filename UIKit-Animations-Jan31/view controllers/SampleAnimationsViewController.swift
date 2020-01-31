//
//  SampleAnimationsViewController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class SampleAnimationsViewController: UIViewController {
    /*
Properties that can be animated
     alpha
     corner radius
     position
     center
     transition
     color
     shadow
     opacity
     transfor: scale, rotate, translate
     */
    
    private let sampleAnimationsViewInstance = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsViewInstance
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scaleAnimation()
        //pulsatingAnimation()
    }
    
    private func pulsatingAnimation(){
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse, .curveLinear], animations: {
            // animation block
            self.sampleAnimationsViewInstance.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            // code to be excuted after animation is complete
            // options: -can reset views values
            //          -create another animation
            // NB: if you want to go beyond vreating an animation in this completion handler the better choice would be animateKeyFranes()
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsViewInstance.pursuitLogo.transform = CGAffineTransform.identity // restores it back to its original state
            }
        }
    }
    
    private func scaleAnimation(){
        
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [], animations: {
            // this is a 3rd of a second
                       // any transform value of 1.0 represents the identity of the view..
                       self.sampleAnimationsViewInstance.pursuitLogo.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
                       self.sampleAnimationsViewInstance.pursuitLogo.alpha = 0.0
                       //self.sampleAnimationsViewInstance.pursuitLogo.transform3D = CATransform3D(0.9)
        /*
        UIView.animate(withDuration: 1.5) { // this is a 3rd of a second
            // any transform value of 1.0 represents the identity of the view..
            self.sampleAnimationsViewInstance.pursuitLogo.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
            self.sampleAnimationsViewInstance.pursuitLogo.alpha = 0.0
            //self.sampleAnimationsViewInstance.pursuitLogo.transform3D = CATransform3D(0.9)
 */
            }) { (done) in
                // gets called animation is done
                
                UIView.animate(withDuration: 0.5)
                {
                    self.sampleAnimationsViewInstance.SwiftLogo.isHidden = false
                    self.sampleAnimationsViewInstance.SwiftLogo.layer.cornerRadius = self.sampleAnimationsViewInstance.SwiftLogo.bounds.size.width / 2.0
                }
                
            }
        }
        
    

    

}
