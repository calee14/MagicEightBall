//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Cappillen on 7/2/18.
//  Copyright © 2018 Cappillen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    let projects = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let targets = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    @IBOutlet weak var projectLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateStartUp()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        
        let randIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randIndex]
    }
    func generateStartUp() {
        let maxIndex_p = UInt32(projects.count)
        let maxIndex_t = UInt32(targets.count)
        
        let randIndex_p = Int(arc4random_uniform(maxIndex_p))
        let randIndex_t = Int(arc4random_uniform(maxIndex_t))
        
        projectLabel.text = projects[randIndex_p]
        targetLabel.text = targets[randIndex_t]
    }
    @IBAction func shakeButtonTapped(_ sender: Any) {
        print("shake it like a mad man")
        generateStartUp()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateStartUp()
    }


}

