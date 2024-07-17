//
//  WeatherListViewController.swift
//  GoodWeather-C1
//
//  Created by Henry Calderon on 7/17/24.
//

import UIKit

class WeatherListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Good Weather"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(navigateToAddWeather))
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(navigateToSettings))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    @objc func navigateToSettings() {
        let vc = SettingsTableViewController(style: .plain)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func navigateToAddWeather() {
        let vc = AddWeatherViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
