//
//  ViewController.swift
//  BullsEye
//
//  Created by Diogenes Dauster on 24/09/18.
//  Copyright © 2018 Diogenes Dauster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundValue = slider.value.rounded()
        currentValue = Int(roundValue)
        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showAlert(){
        
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        
        score += points

        let message = "You scored \(points) points"
        
        let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()

    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        let roundValue = slider.value.rounded()
        currentValue = Int(roundValue)
    }

    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        round+=1
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
}

