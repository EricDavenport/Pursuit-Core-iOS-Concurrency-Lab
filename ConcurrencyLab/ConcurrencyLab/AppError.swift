//
//  AppError.swift
//  ConcurrencyLab
//
//  Created by Eric Davenport on 12/9/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import Foundation

enum AppError: Error {
  case badURL(String) 
  case noResponse
  case networkClientError(Error)
  case noData
  case decodingError(Error)
  case badStatusCode(Int)
  case badMimetype(String)
}
