//
//  ViewController.swift
//  SwiftHorizontalPicker
//
//  Created by Kittikorn Ariyasuk on 2/14/15.
//  Copyright (c) 2015 Tor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var myPickerView: UIPickerView!
    
    let pickerData:[String] = ["A", "B", "C", "D", "E", "F", "G"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.myPickerView.dataSource = self
        self.myPickerView.delegate   = self
        //flipPicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // UIPickerViewDataSource
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView,
        rowHeightForComponent component: Int) -> CGFloat{
        return 24.0
    }
    
    // UIPickerViewDelegate
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
            return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    func flipPicker() {
        self.myPickerView.transform = CGAffineTransformRotate(self.myPickerView.transform, CGFloat(-M_PI/2))
        self.myPickerView.reloadAllComponents()
    }
}

