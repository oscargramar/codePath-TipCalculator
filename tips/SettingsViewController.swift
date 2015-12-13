//
//  SettingsViewController.swift
//  tips
//
//  Created by Oscar G.M on 12/10/15.
//  Copyright © 2015 GMStudios. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var firstTipPercentage: UILabel!
    @IBOutlet weak var secondTipPercentage: UILabel!
    @IBOutlet weak var thirdTipPercentage: UILabel!
    
    @IBOutlet weak var firstTipPercentageStepper: UIStepper!
    
    @IBOutlet weak var secondTipPercentageStepper: UIStepper!
    
    @IBOutlet weak var thirdTipPercentageStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        setStepperValues();
    }
    
    func setStepperValues(){
        let defaults = NSUserDefaults.standardUserDefaults()
        let firstPercent = defaults.doubleForKey("firstTipPercentage")
        let secondPercent = defaults.doubleForKey("secondTipPercentage")
        let thirdPercent = defaults.doubleForKey("thirdTipPercentage")
    
        firstTipPercentage.text = String(format: "%.1f %%", firstPercent)
        secondTipPercentage.text = String(format: "%.1f %%", secondPercent)
        thirdTipPercentage.text = String(format: "%.1f %%", thirdPercent)
        
        firstTipPercentageStepper.value = firstPercent
        secondTipPercentageStepper.value = secondPercent
        thirdTipPercentageStepper.value = thirdPercent

    }
    
    @IBAction func steppedChanged(sender: AnyObject) {
        let stepControl: UIStepper = sender as! UIStepper
        let defaults = NSUserDefaults.standardUserDefaults()
        let stepControlTag = stepControl.tag
        let percent = stepControl.value
        switch stepControlTag{
        case 0:
            firstTipPercentage.text = String(format: "%.1f %%", percent)
            defaults.setDouble(percent, forKey: "firstTipPercentage")
            break
        case 1:
            secondTipPercentage.text = String(format: "%.1f %%", percent)
            defaults.setDouble(percent, forKey: "secondTipPercentage")
            break
        case 2:
            thirdTipPercentage.text = String(format: "%.1f %%", percent)
            defaults.setDouble(percent, forKey: "thirdTipPercentage")
            break
        default:
            print("Invalid stepper selected")
        }
        defaults.synchronize();

        
    }
    
    
    
    
    
    
}
