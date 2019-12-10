//
//  CountryCustomCell.swift
//  ConcurrencyLab
//
//  Created by Eric Davenport on 12/9/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import UIKit

class CountryCustomCell: UITableViewCell {
  
  
  @IBOutlet weak var flagImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var capitalLabel: UILabel!
  @IBOutlet weak var populationLabel: UILabel!

  func configureCell(for thisCountry: Countries) {
    nameLabel.text = thisCountry.name
    capitalLabel.text = thisCountry.capital
    populationLabel.text = "\(thisCountry.population)"
  }
}
