//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by mallikarjun on 31/12/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

protocol SimpleDataPass {
    
    func simpleMethod(data: String)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var delegate: SimpleDataPass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoNextVCButton(_ sender: Any) {
        let firstVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        
        let nextVC = self.storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        firstVC.delegate = nextVC
        firstVC.delegate?.simpleMethod(data: "Mallikarjun")
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

