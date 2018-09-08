//
//  ViewController.swift
//  ToDoApp
//
//  Created by Dalton Varussa De Oliveira Lima on 06/09/18.
//  Copyright © 2018 Dalton Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtAddItem: UITextField!
    @IBOutlet weak var txtList: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didTapButton(_ sender: Any) {
        if let text = txtAddItem.text {
            if text == "" {
                return
            }
            txtList.text.append("\(text)\n")
            txtAddItem.text = ""
            txtAddItem.resignFirstResponder()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

