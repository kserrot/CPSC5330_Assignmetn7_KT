//
//  NavigationViewController.swift
//  CPSC5330_Assignmetn7_KT
//
//  Created by Kaique Torres on 2/24/24.
//

import UIKit

class NavigationViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var selectedCar: CarModels?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = selectedCar != nil ? "\(selectedCar!.cars) - \(selectedCar!.modelc)" : ""
        //label.frame = CGRect(x: 100, y: 100, width: 300, height: 100)
        //label.numberOfLines = 3
        //label.textAlignment = .center
        view.addSubview(label)
    }
}
