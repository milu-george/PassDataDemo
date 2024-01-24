//
//  BlueViewController.swift
//  PassDataDemo
//
//  Created by Milu Ann George on 24/11/23.
//

import UIKit

protocol dataPassing{
    func data(textD:String)
}

class BlueViewController: UIViewController {
    
    @IBOutlet weak var delegateData: UITextField!
    var delegate : dataPassing!

    @IBOutlet weak var secondLabel: UILabel!
    var textEntered = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondLabel.text = textEntered
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        delegate.data(textD: delegateData.text!)
        self.dismiss(animated: false, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    */

}
