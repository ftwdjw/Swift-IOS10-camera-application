//
//  ViewController.swift
//  CameraApplication
//
//  Created by John Mac on 12/16/15.
//  Copyright © 2015 John Wetters. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {//begin
    
    @IBOutlet var imageView: UIImageView!
    
     let picker = UIImagePickerController()
    

    override func viewDidLoad() {//begin
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
       
        
        //present(picker, animated: true, completion: nil)
        
    }//end

    override func didReceiveMemoryWarning() {//begin
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//end
    
    @IBAction func chooseImageFromPhotoLibrary() {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .photoLibrary
        print("\nchoose existing photo\n")
        present(picker, animated: true, completion: nil)
    }
    
    
    @IBAction func chooseFromCamera(){
        //let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
         print("\ntake photo with camera\n")
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        UIImageWriteToSavedPhotosAlbum(imageView.image!,nil,nil,nil)
        
        print("\nfinish taking pictures with camera\n")
        dismiss(animated: true, completion: nil)
     
    }
    
    

}//end

