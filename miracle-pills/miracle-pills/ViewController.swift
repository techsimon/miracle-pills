//
//  ViewController.swift
//  miracle-pills
//
//  Created by Simon Smith on 01/11/2016.
//  Copyright © 2016 tech simon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var statePicker: UIPickerView!
    
    
    @IBOutlet var pickState: UIButton!
    
    let states = ["Avon",
                  "Bedfordshire",
                  "Berkshire",
                  "Buckinghamshire",
                  "Cambridgeshire",
                  "Cheshire",
                  "Cleveland",
                  "Cornwall",
                  "Cumbria",
                  "Derbyshire",
                  "Devon",
                  "Dorset",
                  "Durham",
                  "East Sussex",
                  "Essex",
                  "Gloucestershire",
                  "Hampshire",
                  "Herefordshire",
                  "Hertfordshire",
                  "Isle of Wight",
                  "Kent",
                  "Lancashire",
                  "Leicestershire",
                  "Lincolnshire",
                  "London",
                  "Merseyside",
                  "Middlesex",
                  "Norfolk",
                  "Northamptonshire",
                  "Northumberland",
                  "North Humberside",
                  "North Yorkshire",
                  "Nottinghamshire",
                  "Oxfordshire",
                  "Rutland",
                  "Shropshire",
                  "Somerset",
                  "South Humberside",
                  "South Yorkshire",
                  "Staffordshire",
                  "Suffolk",
                  "Surrey",
                  "Tyne and Wear",
                  "Warwickshire",
                  "West Midlands",
                  "West Sussex",
                  "West Yorkshire",
                  "Wiltshire",
                  "Worcestershire"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate  = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pickStateBtn(_ sender: Any) {
        statePicker.isHidden = false
        
        print("pressed")
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickState.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }

}

