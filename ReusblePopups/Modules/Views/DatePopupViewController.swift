//
//  DatePopupViewController.swift
//  ReusblePopups
//
//  Created by Sherif on 8/9/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveDate: UIButton!
    var showTimePicker = false
    
    func togglePicker(){
        if showTimePicker{
            titleLable.text = "Select Time"
            datePicker.datePickerMode = .time
            saveDate.setTitle("Save Time", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        togglePicker()
    }
    
    @IBAction func saveDate(_ sender: UIButton) {
    
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Save Date"), object: self)
        
        dismiss(animated: true)
    }
    
}
