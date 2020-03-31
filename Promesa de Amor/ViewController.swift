//
//  ViewController.swift
//  Promesa de Amor
//
//  Created by Felipe Valdes on 30-03-20.
//  Copyright © 2020 Rayout. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    
    @IBOutlet weak var animation: UIView!
    let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playAnimation()
    }

    func playAnimation(){
        animationView.animation = Animation.named("hearts")
        animationView.frame.size = animation.frame.size
//        animationView.contentMode = .scaleToFill

        animation.addSubview(animationView)
        animationView.backgroundBehavior = .pauseAndRestore
        animationView.loopMode = .loop

        animationView.play()
    }
}

