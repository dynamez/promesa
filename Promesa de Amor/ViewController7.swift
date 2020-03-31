//
//  ViewController7.swift
//  Promesa de Amor
//
//  Created by Felipe Valdes on 31-03-20.
//  Copyright © 2020 Rayout. All rights reserved.
//

import UIKit
import Lottie

class ViewController7: UIViewController {
    
    @IBOutlet weak var animation: UIView!
    let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        playAnimation()
    }
    
    func playAnimation(){
            animationView.animation = Animation.named("heart_filling")
            animationView.frame.size = animation.frame.size
    //        animationView.contentMode = .scaleToFill

            animation.addSubview(animationView)
            animationView.backgroundBehavior = .pauseAndRestore
            animationView.loopMode = .loop

            animationView.play()
        }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = UIViewController()
//        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
//        self.present(vc, animated: true, completion: nil)
//    }
}
