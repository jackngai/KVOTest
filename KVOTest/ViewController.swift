//
//  ViewController.swift
//  KVOTest
//
//  Created by Jack Ngai on 5/13/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var timeLabel: UILabel!
    
    // MARK: -
    
    let configurationManager = ConfigurationManager(withConfiguration: Configuration())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateConfiguration(_ sender: UIButton) {
        
        configurationManager.updateConfiguration()
    }

    
    
}

