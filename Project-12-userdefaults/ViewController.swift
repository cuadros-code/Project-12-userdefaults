//
//  ViewController.swift
//  Project-12-userdefaults
//
//  Created by Kevin Cuadros on 2/09/24.
//


// integer(forKey:) returns an integer if the key existed, or 0 if not.
// bool(forKey:) returns a boolean if the key existed, or false if not.
// float(forKey:) returns a float if the key existed, or 0.0 if not.
// double(forKey:) returns a double if the key existed, or 0.0 if not.
// object(forKey:) returns Any? so you need to conditionally typecast it to your data type.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        defaults.setValue(25, forKey: "Age")
        defaults.setValue(true, forKey: "FaceID")
        defaults.setValue(CGFloat.pi, forKey: "Pi")
        
        
        defaults.setValue("Kevin Cuadros", forKey: "Name")
        defaults.setValue(Date(), forKey: "LastRun")
        
        let array = ["Hello", "Kevin"]
        defaults.setValue(array, forKey: "SaveArray")
        
        let dict = ["Name": "Kevin", "Country": "COL"]
        defaults.set(dict, forKey: "SavedDict")
        
        let savedInteger = defaults.integer(forKey: "Age")
        print(savedInteger)
        
        let savedBool = defaults.bool(forKey: "FaceID")
        print(savedBool)
        
        let savedArray = defaults.object(forKey: "SaveArray") as? [String] ?? [String]()
        print(savedArray)
        
        let savedDicc = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()
        print(savedDicc)
        
    }


}

