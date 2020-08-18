//
//  SecondViewController.swift
//  BMICalc
//
//  Created by Caner Kaya on 21.12.19.
//  Copyright © 2019 lll. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var colorGradient: CAGradientLayer!
    
    var modifiedBMI = String(format: "%.1f", result)

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.textAlignment = .right
        
        resultLabel.textColor = UIColor.white
        
        messageLabel.textColor = UIColor.white
        
        resultLabel.font = UIFont.boldSystemFont(ofSize: 33)
        
        resultLabel.text = "\(modifiedBMI)"
        
        if result < 18.5
        {
            messageLabel.text = "BMI too low"
            
            colorBad()
        }
        else if result >= 25
        {
            messageLabel.text = "BMI too high"
            
            colorBad()
        }
        else
        {
            messageLabel.text = "BMI good"
            
            colorGood()
        }
        
        buttonOutlet.setTitle("Back", for: .normal)
        
        buttonOutlet.setTitleColor(UIColor.white, for: .normal)
    }
    
    @IBAction func button(_ sender: Any)
    {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    func colorGood()
    {
        let topColor = UIColor(red: 168/255, green: 235/255, blue: 18/255, alpha: 1.0).cgColor
        
        let bottomColor = UIColor(red: 5/255, green: 93/255, blue: 93/255, alpha: 1.0).cgColor
        
        self.colorGradient = CAGradientLayer()
        
        colorGradient.startPoint = CGPoint(x: 1, y: 0)
        
        colorGradient.endPoint = CGPoint(x: 0, y: 1)
        
        colorGradient.frame = self.view.bounds
        
        self.colorGradient.colors = [topColor, bottomColor]
        
        self.view.layer.insertSublayer(colorGradient, at: 0)
    }
    
    func colorBad()
    {
        let topColor = UIColor(red: 218/255, green: 0/255, blue: 0/255, alpha: 1.0).cgColor
        
        let bottomColor = UIColor(red: 204/255, green: 0/255, blue: 224/255, alpha: 1.0).cgColor
        
        self.colorGradient = CAGradientLayer()
        
        colorGradient.startPoint = CGPoint(x: 1, y: 0)
        
        colorGradient.endPoint = CGPoint(x: 0, y: 1)
        
        colorGradient.frame = self.view.bounds
        
        self.colorGradient.colors = [topColor, bottomColor]
        
        self.view.layer.insertSublayer(colorGradient, at: 0)
    }
}
