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
    var observer : NSObjectProtocol?
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        observer = NotificationCenter.default.addObserver(forName: .SaveDateTime, object: nil, queue: OperationQueue.main, using: { (notification) in
            let dateVc = notification.object as! DatePopupViewController
            self.dateTextLabel.text = dateVc.formatterDate
        })
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
    
}


