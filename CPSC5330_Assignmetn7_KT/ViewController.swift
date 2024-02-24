//
//  ViewController.swift
//  CPSC5330_Assignmetn7_KT
//
//  Created by Kaique Torres on 2/20/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cars = [
        CarModels(cars: "Ferrari", "Enzo"),
        CarModels(cars: "Lamborghini", "Aventador"),
        CarModels(cars: "Porsche", "CarreraGT"),
        CarModels(cars: "Bugatti", "Chiron"),
        CarModels(cars: "Pagani", "Huayra"),
        CarModels(cars: "McLaren", "Senna"),
        CarModels(cars: "Koenigsegg", "Regera")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = cars[indexPath.row].cars
        content.secondaryText = cars[indexPath.row].modelc
        cell.contentConfiguration = content
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toNavigation", sender: cars[indexPath.row])
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNavigation" {
            if let destinationVC = segue.destination as? NavigationViewController, let carModel = sender as? CarModels {
                destinationVC.selectedCar = carModel
            }
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}
