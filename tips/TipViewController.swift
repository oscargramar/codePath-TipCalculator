//
//  TipViewController.swift
//  tips
//
//  Created by Oscar G.M on 12/10/15.
//  Copyright © 2015 GMStudios. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    var tipPercentages:Array<Double>!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated);
        setUpTipArray()
        updateTip()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpTipArray(){
        let defaults = NSUserDefaults.standardUserDefaults()
        let firstTipPercentage = defaults.doubleForKey("firstTipPercentage")
        let secondTipPercentage = defaults.doubleForKey("secondTipPercentage")
        let thirdTipPercentage = defaults.doubleForKey("thirdTipPercentage")
        tipPercentages = [firstTipPercentage,secondTipPercentage,thirdTipPercentage]
        tipControl.setTitle(String(format: "%.1f %%",firstTipPercentage), forSegmentAtIndex: 0)
        tipControl.setTitle(String(format: "%.1f %%",secondTipPercentage), forSegmentAtIndex: 1)
        tipControl.setTitle(String(format: "%.1f %%",thirdTipPercentage), forSegmentAtIndex: 2)
        
    }
    
    func updateTip(){
        let billAmount = NSString(string: billField.text!).doubleValue;
        let tip = (tipPercentages[tipControl.selectedSegmentIndex]/100)+1
        tipLabel.text = String(format: "$%.2f", (tip - 1)*billAmount)
        totalLabel.text = String(format: "$%.2f", billAmount*tip)
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        updateTip()
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }


}

