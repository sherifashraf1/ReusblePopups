//
//  SelectTimeViewController.swift
//  ReusblePopups
//
//  Created by Sherif on 8/9/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func selectTime(_ sender: Any) {
        let story = UIStoryboard(name: "DatePopupView", bundle: nil)
        guard let view = story.instantiateInitialViewController() as? DatePopupViewController else { return}
        view.showTimePicker = true
        self.present(view, animated: true)

    }
    

}
