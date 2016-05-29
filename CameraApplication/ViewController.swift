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
    
    

    override func viewDidLoad() {//begin
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
    }//end

    override func didReceiveMemoryWarning() {//begin
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//end
    
    @IBAction func chooseImageFromPhotoLibrary() {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        presentViewController(picker, animated: true, completion: nil)
        
        print("choose existing photo")
    }
    
    
    @IBAction func chooseFromCamera(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .Camera
        
        presentViewController(picker, animated: true, completion: nil)
        
        print("take photo with camera")

        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        dismissViewControllerAnimated(true, completion: nil)
     
    }
    
    

}//end

