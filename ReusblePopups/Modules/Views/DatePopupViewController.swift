//
//  DatePopupViewController.swift
//  ReusblePopups
//
//  Created by Sherif on 8/9/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

protocol PopUpDelegate : class {
    func popUPValueSelected(value : String)
}

class DatePopupViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveDate: UIButton!
    var showTimePicker = false
    var onSave : ((_ data : String)-> ())?
    weak var delegate : PopUpDelegate?
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
        formatter.timeStyle = .short
        return formatter.string(from: datePicker.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        togglePicker()
    }
    
    @IBAction func saveDate(_ sender: UIButton) {
    
        NotificationCenter.default.post(name: .SaveDateTime, object: self)
        if showTimePicker{
            onSave?(formatterTime)
            delegate?.popUPValueSelected(value: formatterTime)
        }else {
            onSave?(formatterDate)
            delegate?.popUPValueSelected(value: formatterDate)
        }
        
        dismiss(animated: true)
    }
    
}
