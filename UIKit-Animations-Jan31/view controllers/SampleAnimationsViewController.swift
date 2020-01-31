//
//  SampleAnimationsViewController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class SampleAnimationsViewController: UIViewController {
    
    private let sampleAnimationsView = sampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    
    

    

}
