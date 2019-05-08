//
//  AddPostViewController.swift
//  Pets
//
//  Created by ESPRIT on 01/05/2019.
//  Copyright © 2019 ESPRIT. All rights reserved.
//

import UIKit

class AddPostViewController: ViewController, UIPickerViewDelegate, UIPickerViewDataSource , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var uploadImageButton: UIButton!
    @IBOutlet weak var petTypePicker: UISegmentedControl!
    @IBOutlet weak var postTypePicker: UISegmentedControl!
    private let towns = ["Ariena", "Beja", "Benarous", "Bizerte", "Gabes", "Gafsa", "Jendouba", "Kairouan", "Kasserine", "Kebili", "Kef", "Mahdia", "Manouba", "Medenine", "Monastir", "Nabeul", "Sfax", "Sidibouzid", "Siliana", "Sousse", "Tataouine", "Tozeur", "Tunis", "Zaghouan"]
    
    let imagePicker = UIImagePickerController()
    @IBOutlet weak var townPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        /*self.townPickerView.delegate = self
         self.townPickerView.dataSource = self*/
        addButton.layer.cornerRadius = 10
        addButton.layer.shadowColor = UIColor.lightGray.cgColor
        addButton.layer.shadowOffset = CGSize(width:0,height: 2.0)
        addButton.layer.shadowRadius = 2.0
        addButton.layer.shadowOpacity = 1.0
        uploadImageButton.layer.cornerRadius = 10
        uploadImageButton.layer.shadowColor = UIColor.lightGray.cgColor
        uploadImageButton.layer.shadowOffset = CGSize(width:0,height: 2.0)
        uploadImageButton.layer.shadowRadius = 2.0
        uploadImageButton.layer.shadowOpacity = 1.0
        
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
    
    @IBAction func selectImage(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        imageView.image = selectedImage
        let imageData:NSData = selectedImage.jpegData(compressionQuality: 0.4)! as NSData
        let strBase64 = imageData.base64EncodedString(options: .lineLength64Characters)
        print("my base64 : " + strBase64)
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

