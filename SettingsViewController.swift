//
//  SettingsViewController.swift
//  tip
//
//  Created by Prasad chandrasekaran on 3/13/17.
//  Copyright © 2017 Samaana. All rights reserved.
//

import UIKit






class SettingsViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
  
    
    @IBOutlet weak var labelTip: UILabel!
   
    var defaultTip = ["10","20","30"]

    @IBOutlet weak var dropBox: UIPickerView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
     return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return defaultTip.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      return defaultTip[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    labelTip.text=defaultTip[row]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
