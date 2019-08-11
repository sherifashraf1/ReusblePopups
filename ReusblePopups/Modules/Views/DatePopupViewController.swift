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
    var onSave : ((_ data : String)-> ())?
    
    func togglePicker(){
        if showTimePicker{
            titleLable.text = "Select Time"
            datePicker.datePickerMode = .time
            saveDate.setTitle("Save Time", for: .normal)
        }
    }
    
    var formatterDate : String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    var formatterTime : String{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: datePicker.date)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        togglePicker()
    }
    
    @IBAction func saveDate(_ sender: UIButton) {
    
        NotificationCenter.default.post(name: .SaveDateTime, object: self)
        onSave?(formatterDate)
        dismiss(animated: true)
    }
    
}
