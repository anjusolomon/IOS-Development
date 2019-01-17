//
//  MainViewController.swift
//  QuizApp
//
//  Created by sneha arora on 2018-08-28.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
   
    @IBAction func onButtonPressed(_ sender: UIButton) {
        
        if textField.text != ""
        {
            performSegue(withIdentifier: "mainSegue", sender:self)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let viewController = segue.destination as! ViewController
        viewController.myString = textField.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button=UIButton(type: .custom)
        button.frame = CGRect(x:160, y:100, width:50, height:50)
button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


