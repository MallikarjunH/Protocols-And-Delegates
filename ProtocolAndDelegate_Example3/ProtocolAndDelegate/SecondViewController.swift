//
//  SecondViewController.swift
//  ProtocolAndDelegate
//
//  Created by mallikarjun on 31/12/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController, UITextFieldDelegate,SimpleDataPass {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func simpleMethod(data: String) {
        print("Data from VC1 is: \(data)")
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
    
      //do something
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

}
