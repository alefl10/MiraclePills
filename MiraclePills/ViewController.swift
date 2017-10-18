//
//  ViewController.swift
//  MiraclePills
//
//  Created by Alejandro Ferrero on 10/4/17.
//  Copyright © 2017 Alejandro Ferrero. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var pickerBtn: UIButton!
    
    
    let states = ["Alabama","Alaska","American Samoa","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","District of Columbia","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Marshall Islands","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Puerto Rico","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virgin Island","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnPressed(_ sender: Any) {
        statePicker.isHidden = false
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
        statePicker.isHidden = true
        pickerBtn.titleLabel?.text = states[row]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        fullNameField.endEditing(true)
        streetField.endEditing(true)
        cityField.endEditing(true)
    }
    
}

