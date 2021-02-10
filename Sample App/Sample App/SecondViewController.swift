//
//  SecondViewController.swift
//  Sample App
//
//  Created by David on 2/10/21.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var topTitleLabel: UILabel!
    @IBOutlet weak var myPicker: UIPickerView!
    
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(myPicker)
        myPicker!.center = self.view.center
        
        pickerData = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        
        self.myPicker?.delegate = self
        self.myPicker?.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[row]
    }
    

}
