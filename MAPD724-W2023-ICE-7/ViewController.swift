//
//  ViewController.swift
//  MAPD724-W2023-ICE-7
//
//  Created by Murtaza Haider Naqvi on 2023-03-17.
//

import UIKit
import GLKit

class ViewController: UIViewController
{
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rotateMe = GLKMathDegreesToRadians(45)
        
        //Sliding animation for the Label, TextField & ImageView
        UIView.animate(withDuration: 1.5)
        {
            self.label.center.x += self.view.bounds.width
            self.textField.center.x += self.view.bounds.width
            self.imageView.center.x += self.view.bounds.width
        }
        
        //Rotating the Label with animation
        UIView.animate(withDuration: 3.4, delay: 2.3, options: [.repeat, .autoreverse], animations:
        {
           self.label.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)
        
        //Rotating the TextField with animation
        UIView.animate(withDuration: 3.5, delay: 0.45, options: [.repeat, .autoreverse], animations:
        {
           self.textField.transform = CGAffineTransform(rotationAngle: CGFloat(-rotateMe))
        }, completion: nil)
        
        //Rotating the ImageView with animation
        UIView.animate(withDuration: 2.5, delay: 1.5, options: [.repeat, .autoreverse], animations:
        {
           self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)
        
        //Changing the transparency of Label with animation
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations:
        {
            self.label.alpha = 0.0
            self.label.backgroundColor = UIColor.lightGray
        }, completion: nil)
        
        //Changing the transparency of TextField with animation
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations:
        {
            self.textField.alpha = 0.0
            self.textField.backgroundColor = UIColor.darkGray
        }, completion: nil)
        
        //Changing the transparency of ImageView with animation
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations:
        {
            self.imageView.alpha = 0.0
            self.imageView.backgroundColor = UIColor.black
        }, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool)
    {
        label.center.x -= view.bounds.width
        textField.center.x -= view.bounds.width
        imageView.center.x -= view.bounds.width
    }
}

