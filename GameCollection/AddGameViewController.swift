//
//  AddGameViewController.swift
//  GameCollection
//
//  Created by Will Laco on 5/3/17.
//  Copyright © 2017 Will Laco. All rights reserved.
//

import UIKit

class AddGameViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var AddGameTitleTextField: UITextField!
   
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    @IBAction func photosPressed(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func cameraPressed(_ sender: Any) {
    }
    
    @IBAction func AddPressed(_ sender: Any) {
    }
    
}
