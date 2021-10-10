//
//  PinkViewController.swift
//  LabEx4
//
//  Created by Tech on 2021-02-08.
//  Copyright © 2021 ca.gbc. All rights reserved.
//

import Foundation
import UIKit

class PinkViewController: UIViewController, MessageProtocol{
    var message: String = ""
    var other: CallbackDelegate!
    
    @IBOutlet weak var output: UILabel!
    
    
    @IBAction func goBackClick(_ sender: Any) {
        if other != nil{
            other.callback("Come with callback")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.text = message
    }
}
