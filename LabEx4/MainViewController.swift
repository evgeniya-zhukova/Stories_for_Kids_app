//
//  ViewController.swift
//  LabEx4
//
//  Created by Tech on 2021-02-08.
//  Copyright © 2021 ca.gbc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, CallbackDelegate {
    func callback(_ msg: String) {
        message = msg
    }
    
    
    @IBOutlet weak var output: UILabel!
    
    private var message:String = ""{
        didSet{
            if output != nil{
                output.text = message
            }
        }
    }

    @IBAction func pinkClick(_ sender: Any) {
        message = "Pink"
    }
    
    
    @IBAction func yellowClick(_ sender: Any) {
        message = "Yellow"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "yellow" || segue.identifier == "pink"{
            var d = segue.destination as! MessageProtocol
            d.message = self.message
        }
        if let c = segue.destination as? PinkViewController{
            c.other = self
        }
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue){
        if let c = seg.source as? YellowViewController{
        message = c.message
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.message = ""
        super.viewWillDisappear(animated)
    }
}
