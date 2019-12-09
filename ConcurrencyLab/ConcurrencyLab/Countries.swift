//
//  File.swift
//  ConcurrencyLab
//
//  Created by Eric Davenport on 12/9/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import Foundation

let endpointURL = "https://restcountries.eu/rest/v2/name/united"


struct Countries: Decodable {
  let name: String
  //let topLevelDomain: String
  //let aplha2Code: String
  //let alpha3Code: String
  let capital: String
  let region: String
  let subregion: String
  let population: Int
  //let currencies: Currencies
  let flag: String
}
//
//struct Currencies: Decodable {
//  let code: String
//  let name: String
//  let symbol: String
//}


  
 
