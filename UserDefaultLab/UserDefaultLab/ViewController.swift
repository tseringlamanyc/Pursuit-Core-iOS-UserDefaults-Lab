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
    }
    
    
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
    }
    

}

