//
//  YellowViewController.swift
//  LabEx4
//
//  Created by Tech on 2021-02-08.
//  Copyright © 2021 ca.gbc. All rights reserved.
//

import Foundation
import UIKit

class YellowViewController: UIViewController, MessageProtocol{
    var message: String = ""
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.text = message
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        message = "Yellow says bye"
    }
}
