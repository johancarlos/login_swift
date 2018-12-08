//
//  ViewController.swift
//  login
//
//  Created by Estudiante on 12/8/18.
//  Copyright © 2018 ucb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserNameField: UITextField!
    @IBOutlet weak var PasswordNameField: UITextField!
    
    var p1 :String = "hello"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        print("The segue identifier is ---> \(identifier)")
        if(PasswordNameField.text == p1 ){
            return true
        }
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

        return false
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "login" {
            print("text")
            let secondController = segue.destination as! SecondViewController
            secondController.labelString = UserNameField.text!
            print("the text is \(secondController.labelString)")
        }
        
    }


}

