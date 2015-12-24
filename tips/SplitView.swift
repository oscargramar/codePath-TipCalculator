//
//  SplitView.swift
//  tips
//
//  Created by Oscar G.M on 12/22/15.
//  Copyright © 2015 GMStudios. All rights reserved.
//

import UIKit
class SplitView: UIView {
    @IBOutlet weak var splitStepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var splitTotalLabel: UILabel!
    var splitArray:Array<Double> = []
    var billTotal:Double = 0
    
    
    
    class func willMoveToSuperview(newSuperview: UIView?) {
    }
    func setTotalBill(totalBill:Double){
        billTotal = totalBill
    }
    
    func splitBill(){
        let numPeople = splitStepper.value
        let amountOwed = billTotal / numPeople
        splitTotalLabel.text = String(format: "$%.2f", amountOwed)

        
    }
    
    
    class func initWithNibAndTotal(nibname: String)->UIView{
        return UINib(nibName: nibname, bundle: nil).instantiateWithOwner(nil, options: nil)[0] as! UIView
    }
    
    
    
    
    
    
    
    @IBAction func dismissPressed(sender: AnyObject) {
        UIView.animateWithDuration(0.4, animations: {
            self.frame.origin = CGPointMake(0, 736)
            }, completion:{(value:Bool) in
        self.removeFromSuperview()
        })
    }
    @IBAction func stepperChanged(sender: AnyObject) {
        stepperLabel.text = Int(splitStepper.value).description
        splitBill();

        }

    
    
}
