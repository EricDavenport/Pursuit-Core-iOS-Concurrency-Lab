//
//  ViewController.swift
//  ConcurrencyLab
//
//  Created by Eric Davenport on 12/9/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var countries = [Countries]() {
    didSet {
      DispatchQueue.main.async {
        self.tableView.reloadData()
      }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    loadData()
    tableView.dataSource = self
    tableView.delegate = self
    dump(countries)

  }
  
  func loadData() {
    CountriesAPIClient.getCountries { (result) in
      switch result {
      case .failure(let appError):
        print("App Error: \(appError)")
      case .success(let data):
        self.countries = data
        print("\(data.count)")
      }
    }
  }


}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    countries.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as? CountryCustomCell else {
      fatalError("failed to deque cell properly")
    }
    let country = countries[indexPath.row]
    
    cell.configureCell(for: country)
    
    return cell
    
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 135
  }
  
  
}
