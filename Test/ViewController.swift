//
//  ViewController.swift
//  Test
//
//  Created by D7703_30 on 2018. 3. 22..
//  Copyright © 2018년 D7703_30. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBAction func btn(_ sender: Any) {
        label.text="Hello "+text.text!
        text.text=""
        text.resignFirstResponder()
    }
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        text.delegate=self
    text.clearButtonMode=UITextFieldViewMode.whileEditing
        text.placeholder="입력하세요"
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        text.resignFirstResponder()
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor=UIColor.blue
        
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        view.backgroundColor=UIColor.yellow
    }



}

