//
//  ThemeViewController.swift
//  tips
//
//  Created by Oscar G.M on 12/23/15.
//  Copyright © 2015 GMStudios. All rights reserved.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var themePreview: UIView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSliders()
        setUpTheme()
        updateThemePreview()
        

        // Do any additional setup after loading the view.
    }
    
    func setUpSliders(){
        let defaults = NSUserDefaults.standardUserDefaults()
        let redValue = defaults.doubleForKey("rValue")
        let greenValue = defaults.doubleForKey("gValue")
        let blueValue = defaults.doubleForKey("bValue")
        redSlider.value = Float(redValue*255)
        greenSlider.value = Float(greenValue*255)
        blueSlider.value = Float(blueValue*255)
        
        
    }
    
    func setUpTheme(){
        let defaults = NSUserDefaults.standardUserDefaults()
        let redValue = defaults.doubleForKey("rValue")
        let greenValue = defaults.doubleForKey("gValue")
        let blueValue = defaults.doubleForKey("bValue")
        self.view.backgroundColor = UIColor(red:CGFloat(redValue), green:CGFloat(greenValue), blue:CGFloat(blueValue), alpha: 1.0)
    }
    
    func updateThemePreview(){
        let redValue = Double(redSlider.value/255.0)
        let greenValue = Double(greenSlider.value/255.0)
        let blueValue = Double(blueSlider.value/255.0)
        themePreview.backgroundColor = UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func slidersAdjusted(sender: AnyObject) {
        updateThemePreview()
    }
    @IBAction func applyPressed(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let redValue = Double(redSlider.value/255.0)
        let greenValue = Double(greenSlider.value/255.0)
        let blueValue = Double(blueSlider.value/255.0)
        defaults.setDouble(redValue, forKey: "rValue")
        defaults.setDouble(greenValue, forKey: "gValue")
        defaults.setDouble(blueValue, forKey: "bValue")
        defaults.synchronize()
        setUpTheme()
    }

}
