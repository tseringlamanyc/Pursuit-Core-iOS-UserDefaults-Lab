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
    
    var allSigns = [TodaysSign]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePick.datePickerMode = .date
        loadSign()
        todaysHoroscope.text = "Sup"
    }
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/d/yyyy"
        formatter.timeZone = .current
        return formatter
    }()
    
    func getDateRange(from start: String, to end: String) -> ClosedRange<Date> {
        let startDate = dateFormatter.date(from: start) ?? Date()
        let endDate = dateFormatter.date(from: end) ?? Date()
        return startDate...endDate
    }
    
    func getDate(from str: String) -> Date {
        return dateFormatter.date(from: str) ?? Date()
    }
    
    let currentYear = "2020"
    let previousYear = "2019"
    
    func loadSign() {
        HoroscopeAPI.getHoroscope { [weak self] (result) in
            switch result {
            case .failure(let appError):
                print("\(appError)")
            case .success(let data):
                DispatchQueue.main.async {
                    self?.allSigns = data
                }
            }
        }
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        switch sender.date {
        case getDate(from: "03/21/\(currentYear)")...getDate(from: "04/19/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.aries.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.aries.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[0].horoscope
        case getDate(from: "04/20/\(currentYear)")...getDate(from: "05/20/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.taurus.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.taurus.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[1].horoscope
        case getDate(from: "05/21/\(currentYear)")...getDate(from: "06/20/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.gemini.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.gemini.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[2].horoscope
        case getDate(from: "06/21/\(currentYear)")...getDate(from: "07/22/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.cancer.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.cancer.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[3].horoscope
        case getDate(from: "07/23/\(currentYear)")...getDate(from: "08/22/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.leo.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.leo.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[4].horoscope
        case getDate(from: "08/23/\(currentYear)")...getDate(from: "09/22/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.virgo.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.virgo.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[5].horoscope
        case getDate(from: "09/23/\(currentYear)")...getDate(from: "10/22/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.libra.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.libra.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[6].horoscope
        case getDate(from: "10/23/\(currentYear)")...getDate(from: "11/21/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.scorpio.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.scorpio.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[7].horoscope
        case getDate(from: "11/22/\(currentYear)")...getDate(from: "12/21/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.sagittarius.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.sagittarius.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[8].horoscope
        case getDate(from: "12/22/\(previousYear)")...getDate(from: "01/19/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.capricorn.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.capricorn.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[9].horoscope
        case getDate(from: "01/20/\(currentYear)")...getDate(from: "02/18/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.aquarius.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.aquarius.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[10].horoscope
        case getDate(from: "02/19/\(currentYear)")...getDate(from: "03/20/\(currentYear)"):
            horoImage.image = UIImage(named: Horoscope.pisces.rawValue)
            horoscopeLabel.text = "Your horoscope is \(Horoscope.pisces.rawValue.uppercased())"
            todaysHoroscope.text = allSigns[11].horoscope
        default:
            break
        }
    }
}

