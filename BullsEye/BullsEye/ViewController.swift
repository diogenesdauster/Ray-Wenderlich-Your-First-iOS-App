//
//  ViewController.swift
//  BullsEye
//
//  Created by Diogenes Dauster on 24/09/18.
//  Copyright © 2018 Diogenes Dauster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello, World!", message: "My first App", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)

    }
    



}

