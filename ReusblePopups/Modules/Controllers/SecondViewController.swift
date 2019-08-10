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
    override func viewDidLoad() {
        super.viewDidLoad()
        // that is the old way to listen the nofificatoins
//        NotificationCenter.default.addObserver(self, selector: #selector(handlePopUpClosing), name: .SaveDateTime, object: nil)
   
    //Second way to listen the notification
        
        NotificationCenter.default.addObserver(forName: .SaveDateTime, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVc = notification.object as! DatePopupViewController
            self.dateTextLabel.text = dateVc.formatterDate
        }
    
    }
    
//    @objc func handlePopUpClosing(notification : Notification){
//        let dateVc = notification.object as! DatePopupViewController
//           dateTextLabel.text = dateVc.formatterTime
//    }
    
    
    
    
    }
    


