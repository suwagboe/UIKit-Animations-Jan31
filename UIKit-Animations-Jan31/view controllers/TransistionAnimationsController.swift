//
//  TransistionAnimationsController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 2/4/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class TransistionAnimationsController: UIViewController {
    
    //create a tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
        // this only declares the gesture. but it doesn't me it gets used this just says that it is here.
        let gesture = UITapGestureRecognizer()
        // the image cannot respond to the function. so it needs to be on the image. the target is where we are dragging it to
        gesture.addTarget(self, action: #selector(animate))
        
        return gesture
    }()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set default image
        imageView.image = UIImage(named: "dog")
        view.backgroundColor = .systemPink
        
        // need to enable user interation on image view or a label as those two UI element are set to false by default
        imageView.isUserInteractionEnabled = true
        
        // add gesture to the image view this part enable the interation between the gesture and the image
        imageView.addGestureRecognizer(tapGesture) // this is the gesture it should recognizer.
    }
    
    @objc
    private func animate() {
        // set up gesture that when the image is tap the image gets called.
        print("animate") // to confirm that this does get called when it is tapped
        
        let duration: Double = 1.5
        let curveOption: UIView.AnimationOptions = .curveEaseInOut
        
        // built in bezier animation curve
        /*
         curveEaseInOut
         CurveEaseIn
         curveEaseOut
         curveLinear
         */
        
        if imageView.image == UIImage(named: "dog"){
            // this is swaping
            
            // when changning subview instead of doing it abruptly you can add the transition
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromRight, curveOption], animations: {
                //aniimation block goes here
                // need to call self because we are in a closure
                self.imageView.image = UIImage(named: "cat")
                self.imageView.backgroundColor = .systemTeal
                // if the image is a dog change it to a cat
            }, completion: nil)
        } else {
            // else change it to a dog
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromLeft, curveOption], animations: {
                           self.imageView.image = UIImage(named: "dog")
                self.imageView.backgroundColor = .purple
                           // if the image is a cat change it to a dog
                       }, completion: nil)
        }
        
    }
    
}
