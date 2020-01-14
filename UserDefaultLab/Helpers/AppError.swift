//
//  AppError.swift
//  UserDefaultLab
//
//  Created by Tsering Lama on 1/13/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import Foundation

enum AppError: Error {
    case badURL(String)
    case noResponse
    case networkClientError(Error)
    case noData
    case decodingError(Error)
    case encodingError(Error)
    case badStatusCode(Int)
    case badMimeType(String)
    
    var description: String {
        return "AppError: \(self)"
    }
}
