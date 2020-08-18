//
//  ViewController.swift
//  BMICalc
//
//  Created by Caner Kaya on 21.12.19.
//  Copyright © 2019 lll. All rights reserved.
//

import UIKit

var result: Float = 0.0

class ViewController: UIViewController {
    
    var height: Float = 0.0
    
    var weight: Float = 0.0

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderOutlet: UISlider!
    
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var heightIncrementOutlet: UIButton!
    
    @IBOutlet weak var heightDecrementOutlet: UIButton!
    
    @IBOutlet weak var weightIncrementOutlet: UIButton!
    
    @IBOutlet weak var weightDecrementOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        heightLabel.layer.cornerRadius = 9
        
        weightLabel.layer.cornerRadius = 9
        
        heightLabel.textAlignment = .right
        
        weightLabel.textAlignment = .right
        
        buttonOutlet.layer.cornerRadius = 9
        
        buttonOutlet.setTitle("Calculate", for: .normal)
        
        heightIncrementOutlet.setTitle("+", for: .normal)
        
        heightDecrementOutlet.setTitle("-", for: .normal)
        
        weightIncrementOutlet.setTitle("+", for: .normal)
        
        weightDecrementOutlet.setTitle("-", for: .normal)
        
        heightSliderOutlet.minimumValue = 1.0
        
        heightSliderOutlet.maximumValue = 2.3
        
        weightSliderOutlet.minimumValue = 30
        
        weightSliderOutlet.maximumValue = 150
        
        height = heightSliderOutlet.minimumValue
        
        weight = weightSliderOutlet.minimumValue
        
        heightLabel.text = "\(heightSliderOutlet.minimumValue) m"
        
        weightLabel.text = "\(weightSliderOutlet.minimumValue) kg"
    }

    @IBAction func button(_ sender: Any)
    {
        result = weight / pow(height, 2)
        
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
   
    @IBAction func heightSlider(_ sender: UISlider)
    {
        let tempHeight = sender.value
        
        height = Float(String(format: "%.2f", tempHeight))!
        
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider)
    {
        let tempWeight = sender.value
        
        weight = Float(String(format: "%.1f", tempWeight))!
        
        weightLabel.text = "\(weight) kg"
    }
    
    @IBAction func heightIncrement(_ sender: Any)
    {
        height += 0.01
        
        let tempHeight = height
        
        height = Float(String(format: "%.2f", tempHeight))!
        
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func heightDecrement(_ sender: Any)
    {
        height -= 0.01
        
        let tempHeight = height
        
        height = Float(String(format: "%.2f", tempHeight))!
        
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightIncrement(_ sender: Any)
    {
        weight += 0.1
        
        let tempWeight = weight
        
        weight = Float(String(format: "%.1f", tempWeight))!
        
        weightLabel.text = "\(weight) kg"
    }
    
    @IBAction func weightDecrement(_ sender: Any)
    {
        weight -= 0.1
        
        let tempWeight = weight
        
        weight = Float(String(format: "%.1f", tempWeight))!
        
        weightLabel.text = "\(weight) kg"
    }
}

