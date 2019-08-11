//
//  SecondViewController.swift
//  ReusblePopups
//
//  Created by Sherif on 8/9/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var dateTextLabel : UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDatePopupSegue"{
            let popUp = segue.destination as! DatePopupViewController
            popUp.showTimePicker = false
//            popUp.onSave = onSave
            popUp.onSave = {(data) in
                self.dateTextLabel.text = data
            }
        }
    }
    
    //instead of this function we can use a closure on segue....
//    func onSave(_ data : String)-> () {
//        dateTextLabel.text = data
//    }
}
    


