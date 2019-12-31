//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by mallikarjun on 31/12/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataPass {
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func dataPassing(name: String, age: String, city: String) {
    
        nameLabel.text = name
        ageLabel.text = age
        cityLabel.text = city
    }

    @IBAction func gotoNextVCButton(_ sender: Any) {
  
        let nextVC = self.storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        nextVC.delegate = self
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

