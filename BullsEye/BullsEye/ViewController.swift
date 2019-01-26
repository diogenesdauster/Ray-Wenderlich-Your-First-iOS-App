//
//  ViewController.swift
//  BullsEye
//
//  Created by Diogenes Dauster on 24/09/18.
//  Copyright © 2018 Diogenes Dauster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
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

        let message = "The value of the slider is now: \(currentValue) " +
        "\nThe target value is: \(targetValue)" +
        "\nThe difference value is: \(difference)"
        
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
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }
    
}

