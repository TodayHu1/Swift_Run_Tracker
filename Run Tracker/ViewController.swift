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
    
//Global Vars
    var listOfRuns = [Run]()
    var listOfRunNames = [String]()
//    variable used to populate the picker
    var managedObjectContext : NSManagedObjectContext!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pkrRunPicker.delegate = self
        pkrRunPicker.dataSource = self
        
        txtRunName.delegate = self
        txtRunDistance.delegate = self
        txtRunTime.delegate = self
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        creates a delegate for us to use as an appDelegate 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//These functions determine the size and behavior of the pickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listOfRunNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listOfRunNames[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let chosenRunName = listOfRunNames[row]
        for run in listOfRuns {
            if run.runname == chosenRunName {
                let runPace = Double(run.runtime!)! / Double(run.rundistance!)!
                lblRunNameDisplay.text = "Name: " + run.runname!
                lblRunDistanceDisplay.text = "Distance: " + run.rundistance! + " km"
                lblRunTimeDisplay.text = "Time: " + run.runtime! + " min (" + String(format: "%.2f", runPace) + "min/km"
            }
        }
    }
    
//textField functions
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        lets us determine what kind of characters are allowed in the fields
    }
    
//Add & Delete Buttons
    @IBAction func pressAddButton(_ sender: UIButton) {
    }

    @IBAction func pressDeleteButton(_ sender: UIButton) {
    }
}

