//
//  ViewControler2.swift
//  Promesa de Amor
//
//  Created by Felipe Valdes on 31-03-20.
//  Copyright © 2020 Rayout. All rights reserved.
//

import UIKit
import Lottie

class ViewController2: UIViewController {
    
    @IBOutlet weak var animation: UIView!
    let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        playAnimation()
    }
    
    func playAnimation(){
            animationView.animation = Animation.named("matrimonio")
            animationView.frame.size = animation.frame.size
    //        animationView.contentMode = .scaleToFill

            animation.addSubview(animationView)
            animationView.backgroundBehavior = .pauseAndRestore
            

            animationView.play()
        }
}
