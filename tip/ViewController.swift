//
//  ViewController.swift
//  tip
//
//  Created by Joseph Perri Albanese on 4/29/16.
//  Copyright © 2016 jpa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // This removes the status bar
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    // This defines my text labels, text fields and segmented control
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billInput: UITextField!
    @IBOutlet weak var billVIew: UIView!
    @IBOutlet weak var tipTotalView: UIView!
    @IBOutlet weak var tipPercentageView: UIView!
    @IBOutlet weak var lightSwitch: UIButton!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var tipSeperator: UIView!
    @IBOutlet weak var totalSeperator: UIView!
    @IBOutlet weak var totalTitle: UILabel!
    @IBOutlet weak var tipPercentageSeperator: UIView!
    @IBOutlet weak var tipTitle: UILabel!
    @IBOutlet weak var darkSwitch: UIButton!
    @IBOutlet weak var backgroundLight: UIView!
    
    
    // This is my animation code for my views
    
    @IBAction func inputStart(sender: AnyObject) {
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 12.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
        self.billVIew.frame.origin = CGPoint(x:0, y: 20)
        self.tipTotalView.frame.origin = CGPoint(x: 0, y:160)
        self.tipPercentageView.frame.origin = CGPoint(x: 0, y: 256)
            }), completion: nil)
    }
   
    
    
    // This is the action that colors my ui Light
    
    @IBAction func lightAction(sender: AnyObject) {
        
          lightSwitch.enabled = false
           darkSwitch.enabled = true
        
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 12.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
           
            self.view.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.moneyLabel.textColor = UIColor(red:0.10, green:0.11, blue:0.15, alpha:1.00)
            self.billField.textColor = UIColor(red:0.10, green:0.11, blue:0.15, alpha:1.00)
            self.tipLabel.textColor = UIColor(red:0.10, green:0.11, blue:0.15, alpha:1.00)
            self.totalLabel.textColor = UIColor(red:0.10, green:0.11, blue:0.15, alpha:1.00)
            self.tipSeperator.backgroundColor = UIColor(red:0.81, green:0.82, blue:0.83, alpha:1.00)
            self.totalSeperator.backgroundColor = UIColor(red:0.81, green:0.82, blue:0.83, alpha:1.00)
            self.totalTitle.textColor = UIColor(red:0.58, green:0.77, blue:0.45, alpha:1.00)
            self.tipPercentageSeperator.backgroundColor = UIColor(red:0.81, green:0.82, blue:0.83, alpha:1.00)
            self.tipTitle.textColor = UIColor(red:0.13, green:0.68, blue:0.65, alpha:1.00)
            self.tipControl.tintColor = UIColor(red:0.16, green:0.17, blue:0.22, alpha:1.00)
            self.lightSwitch.transform = CGAffineTransformMakeScale(0.0 , 0.0)
            self.darkSwitch.transform = CGAffineTransformMakeScale(1.0 , 1.0)
            self.billField.transform = CGAffineTransformMakeScale(1.05, 1.05)
            self.tipLabel.transform = CGAffineTransformMakeScale(1.05, 1.05)
            self.totalLabel.transform = CGAffineTransformMakeScale(1.05, 1.05)
            
            
        }), completion: nil)
        
    }
    
    @IBAction func darkAction(sender: AnyObject) {
        
       darkSwitch.enabled = false
        lightSwitch.enabled = true
        
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 12.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.view.backgroundColor = UIColor(red:0.12, green:0.12, blue:0.16, alpha:1.00)
            self.moneyLabel.textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            self.billField.textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            self.tipLabel.textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            self.totalLabel.textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            self.tipSeperator.backgroundColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            self.totalSeperator.backgroundColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            self.totalTitle.textColor = UIColor(red:0.83, green:1.00, blue:0.71, alpha:1.00)
            self.tipPercentageSeperator.backgroundColor = UIColor(red:0.81, green:0.82, blue:0.83, alpha:1.00)
            self.tipTitle.textColor = UIColor(red:0.13, green:0.68, blue:0.65, alpha:1.00)
            self.tipControl.tintColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            self.darkSwitch.transform = CGAffineTransformMakeScale(0.0 , 0.0)
            self.lightSwitch.transform = CGAffineTransformMakeScale(1.0 , 1.0)
            self.billField.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.tipLabel.transform = CGAffineTransformMakeScale(1.0, 1.0)
            self.totalLabel.transform = CGAffineTransformMakeScale(1.0, 1.0)
        
        
                }), completion: nil)

    }
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // This returns all my views to their original states.
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        UIView.animateWithDuration(0.8, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 12.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: ({
            self.billVIew.frame.origin = CGPoint(x:0, y: 56)
            self.tipTotalView.frame.origin = CGPoint(x: 0, y:256)
               self.tipPercentageView.frame.origin = CGPoint(x: 0, y: 422)
        }), completion: nil)
    }

   
    

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.22]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
     }
    


}