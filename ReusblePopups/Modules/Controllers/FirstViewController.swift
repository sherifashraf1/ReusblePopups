//
//  ViewController.swift
//  ReusblePopups
//
//  Created by Sherif on 8/9/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var dateTextLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(handlePopUpClosing), name: .SaveDateTime, object: nil)
        
    
    }
    
    @objc func handlePopUpClosing(notification : Notification){
        
        let dateVc = notification.object as! DatePopupViewController
            dateTextLabel.text = dateVc.formatterDate
        
    }
    
}


