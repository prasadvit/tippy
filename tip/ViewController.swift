//
//  ViewController.swift
//  tip
//
//  Created by Prasad chandrasekaran on 3/10/17.
//  Copyright © 2017 Samaana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var totalField: UILabel!
    @IBOutlet weak var selection: UISegmentedControl!
    @IBOutlet  var tipManual: UITextField!
    @IBOutlet weak var customButton: UIButton!

    var _pickerData = @[@"Item 1", @"Item 2", @"Item 3", @"Item 4", @"Item 5", @"Item 6"];
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
    }
 
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gesture(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func tipChange(_ sender: Any) {
        
        tipCal()
        
    }
    
    
    @IBAction func manualTipCalculator(_ sender: Any) {
    
        let bill = Double(billField.text!) ?? 0
        let tip = Double(tipManual.text!) ?? 0
        totalField.text = String(bill+tip)
    
    }

    @IBAction func selectionChange(_ sender: Any) {
   
   
        tipCal()
    }
  
     func tipCal(){
        let bill = Double(billField.text!) ?? 0
        let percentageArray=[0.10,0.15,0.20]
        let tip = bill * percentageArray[selection.selectedSegmentIndex]
        tipField.text=String(tip)
        totalField.text = String(tip+bill)
    }

    @IBAction func customCal(_ sender: Any) {


    }
    
    
}

    
