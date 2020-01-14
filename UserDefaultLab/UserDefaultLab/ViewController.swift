//
//  ViewController.swift
//  UserDefaultLab
//
//  Created by Tsering Lama on 1/13/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var horoscopeLabel: UILabel!
    @IBOutlet weak var horoImage: UIImageView!
    @IBOutlet weak var todaysHoroscope: UITextView!
    @IBOutlet weak var datePick: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePick.datePickerMode = .date
    }
    
    
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        let date = sender.date.description
         
        // US English Locale (en_US)
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.setLocalizedDateFormatFromTemplate("MMMMd")
        switch date {
        case "2020-01-10":
            horoImage.image = UIImage(named: "aries")
        default:
            break
        }
    }
    

}

