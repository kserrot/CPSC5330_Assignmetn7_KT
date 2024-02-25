//
//  NavigationViewController.swift
//  CPSC5330_Assignmetn7_KT
//
//  Created by Kaique Torres on 2/24/24.
//

import UIKit

class NavigationViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var selectedCar: CarModels?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = selectedCar != nil ? "\(selectedCar!.cars) - \(selectedCar!.modelc)" : ""
        if let carModel = selectedCar?.modelc.lowercased() {
            background.image = UIImage(named: carModel)
        }
        view.addSubview(label)
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
}
