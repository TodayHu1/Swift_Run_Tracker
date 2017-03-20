//
//  ViewController.swift
//  Run Tracker
//
//  Created by Trent Hand on 3/20/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
//TEXTFIELDS
    @IBOutlet weak var txtRunName: UITextField!
    @IBOutlet weak var txtRunDistance: UITextField!
    @IBOutlet weak var txtRunTime: UITextField!
    
//LABELS
    @IBOutlet weak var lblRunNameDisplay: UILabel!
    @IBOutlet weak var lblRunDistanceDisplay: UILabel!
    @IBOutlet weak var lblRunTimeDisplay: UILabel!
    
//PICKER
    @IBOutlet weak var pkrRunPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pkrRunPicker.delegate = self
        pkrRunPicker.dataSource = self
        
        txtRunName.delegate = self
        txtRunDistance.delegate = self
        txtRunTime.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//These functions determine the size and behavior of the pickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
    
//textField functions
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        <#code#>
//        lets us determine what kind of characters are allowed in the fields
    }
    
//Add & Delete Buttons
    @IBAction func pressAddButton(_ sender: UIButton) {
    }

    @IBAction func pressDeleteButton(_ sender: UIButton) {
    }
}

