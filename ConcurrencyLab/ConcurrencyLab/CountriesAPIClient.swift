//
//  CountriesAPIClient.swift
//  ConcurrencyLab
//
//  Created by Eric Davenport on 12/9/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import Foundation

struct CountriesAPIClient {
  
  static func getCountries(completion: @escaping (Result<[Countries], AppError>) -> ()) {
    
    let endpointURL = "https://restcountries.eu/rest/v2/name/united"
    
    //var country = [Countries]()
    
    NetworkHelper.shared.performDataTask(with: endpointURL) { (result) in
      switch result {
      case .failure(let appError):
        print("App Error: \(appError)")
      case .success(let data):
        do {
          let query = try JSONDecoder().decode([Countries].self, from: data)
          completion(.success(query))
        } catch {
          completion(.failure(.decodingError(error)))
          print("decoding error: \(error)")
        }
      }
    }
  }

}
