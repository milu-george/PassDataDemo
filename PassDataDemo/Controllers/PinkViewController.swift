//
//  ViewController.swift
//  PassDataDemo
//
//  Created by Milu Ann George on 24/11/23.
//

import UIKit

class PinkViewController: UIViewController, dataPassing{
    
    func data(textD: String) {
        DispatchQueue.main.async {
              self.delegateDataDisplayed.text! = textD
            }
    }
    

    @IBOutlet weak var enterText: UITextField!
    
    @IBOutlet weak var delegateDataDisplayed: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextbuttonpressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToBlueScreen", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToBlueScreen"{
            let destinationVC = segue.destination as! BlueViewController
            destinationVC.delegate = self
            destinationVC.textEntered = enterText.text!
        
        }
    }




}

