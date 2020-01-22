//
//  UserHoroscope.swift
//  UserDefaultLab
//
//  Created by Tsering Lama on 1/15/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import Foundation

struct UserKey {
    static let userSign = "Sign"
    static let userPic = "Pic"
    static let userToday = "Today"
}

class UserPeference {
    private init() {}
    
    static let shared = UserPeference()
    
    func updateDefault<T>(value: T, key: String) {
        UserDefaults.standard.set(value, forKey: key)
        
    }
    
    func getDefault<T>(key: String) -> T? {
        guard let value = UserDefaults.standard.object(forKey: key) as? T else {
            return nil
        }
        return value
    }
}
