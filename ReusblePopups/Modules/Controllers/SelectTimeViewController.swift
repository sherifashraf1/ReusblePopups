//
//  SelectTimeViewController.swift
//  ReusblePopups
//
//  Created by Sherif on 8/9/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {
    @IBOutlet weak var timeTextLabel : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func selectTime(_ sender: Any) {
        let story = UIStoryboard(name: "DatePopupView", bundle: nil)
        guard let view = story.instantiateInitialViewController() as? DatePopupViewController else { return}
        view.showTimePicker = true
        view.delegate = self
        self.present(view, animated: true)

    }
    
}

extension SelectTimeViewController : PopUpDelegate {
    func popUPValueSelected(value: String) {
        timeTextLabel.text = value
    }
    
    
}
