//
//  NewPostViewController.swift
//  FirebasePhotos
//
//  Created by Duc Tran on 10/9/17.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

import UIKit

class NewPostViewController: UIViewController
{
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
    
    var textViewPlaceholderText = "What's on your mind?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        captionTextView.text = textViewPlaceholderText
        captionTextView.textColor = .lightGray
        captionTextView.delegate = self
    }
    
    @IBAction func shareDidTap()
    {
       
    }
    
    @IBAction func cancelDidTap(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
}

extension NewPostViewController : UITextViewDelegate
{
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == textViewPlaceholderText {
            textView.text = ""
            textView.textColor = .white
        }
        textView.becomeFirstResponder()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = textViewPlaceholderText
            textView.textColor = .lightGray
        }
        textView.resignFirstResponder()
    }
}





