//
//  HoroscopeAPI.swift
//  UserDefaultLab
//
//  Created by Tsering Lama on 1/13/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import Foundation

struct HoroscopeAPI {
    static func getHoroscope(userSign: String, completionHandler: @escaping (Result<TodaysSign,AppError>) -> ()) {
        let endpointURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(userSign)/today"
        guard let url = URL(string: endpointURL) else {
            completionHandler(.failure(.badURL(endpointURL)))
            return
        }
        let request = URLRequest(url: url)
        NetworkHelper.shared.performDataTask(with: request) { (result) in
            switch result {
            case .failure(let appError):
                completionHandler(.failure(.networkClientError(appError)))
            case .success(let data):
                do {
                    let horoData = try JSONDecoder().decode(TodaysSign.self, from: data)
                    completionHandler(.success(horoData))
                } catch {
                    completionHandler(.failure(.decodingError(error)))
                }
            }
        }
    }
}
