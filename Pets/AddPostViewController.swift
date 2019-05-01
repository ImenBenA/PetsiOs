//
//  AddPostViewController.swift
//  Pets
//
//  Created by ESPRIT on 01/05/2019.
//  Copyright © 2019 ESPRIT. All rights reserved.
//

import UIKit

class AddPostViewController: ViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var petTypePicker: UISegmentedControl!
    @IBOutlet weak var postTypePicker: UISegmentedControl!
    
    private let towns = ["Ariena", "Beja", "Benarous", "Bizerte", "Gabes", "Gafsa", "Jendouba", "Kairouan", "Kasserine", "Kebili", "Kef", "Mahdia", "Manouba", "Medenine", "Monastir", "Nabeul", "Sfax", "Sidibouzid", "Siliana", "Sousse", "Tataouine", "Tozeur", "Tunis", "Zaghouan"]
    
    
    @IBOutlet weak var townPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*self.townPickerView.delegate = self
         self.townPickerView.dataSource = self*/
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return towns.count
    }
    
    /*func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let valueSelected = yourDataSourceArray[row] as String
    }*/
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return towns[row]
    }
    
    
    @IBAction func postTypeAction(_ sender: Any) {
        if(postTypePicker.selectedSegmentIndex==0)
        {
            //self.view.backgroundColor=UIColor.purpleColor()
            //postTypePicker.selectedSegmentIndex=UISegmentedControl.noSegment
        }
        else if(postTypePicker.selectedSegmentIndex==1)
        {
            /*self.view.backgroundColor=UIColor.yellowColor()
            segmentcontroll.selectedSegmentIndex=UISegmentedControlNoSegment*/
        }
        else {
            /*self.view.backgroundColor=UIColor.grayColor()
             segmentcontroll.selectedSegmentIndex=UISegmentedControlNoSegment*/
        }
    }
    
    
    
    @IBAction func petTypeAction(_ sender: Any) {
        if(petTypePicker.selectedSegmentIndex==0)
        {
            /*self.view.backgroundColor=UIColor.purpleColor()
             segmentcontroll.selectedSegmentIndex=UISegmentedControlNoSegment*/
        }
        else if(petTypePicker.selectedSegmentIndex==1)
        {
            /*self.view.backgroundColor=UIColor.yellowColor()
             segmentcontroll.selectedSegmentIndex=UISegmentedControlNoSegment*/
        }
        else if(petTypePicker.selectedSegmentIndex==2)
        {
            /*self.view.backgroundColor=UIColor.grayColor()
             segmentcontroll.selectedSegmentIndex=UISegmentedControlNoSegment*/
        }
        else {
            /*self.view.backgroundColor=UIColor.grayColor()
             segmentcontroll.selectedSegmentIndex=UISegmentedControlNoSegment*/
        }
    }
    
}
