//
//  ViewController.swift
//  Run Tracker
//
//  Created by Trent Hand on 3/20/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Add & Delete Buttons
    @IBAction func pressAddButton(_ sender: UIButton) {
    }

    @IBAction func pressDeleteButton(_ sender: UIButton) {
    }
}

