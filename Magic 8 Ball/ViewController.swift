//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kylie Bara (Raven Blackwell) on 12/10/18.
//  Copyright © 2018 Kylie Bara (Raven Blackwell). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       newBallImage()
        
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    
    
    func newBallImage(){
        
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

