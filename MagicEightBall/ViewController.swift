//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Cappillen on 7/2/18.
//  Copyright © 2018 Cappillen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        print("shake it like a mad man")
        
        answerLabel.text = "button was tapped"
    }
    


}

