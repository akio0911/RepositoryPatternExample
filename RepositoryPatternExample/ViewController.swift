//
//  ViewController.swift
//  RepositoryPatternExample
//
//  Created by akio0911 on 2016/04/27.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storage: DataStorageType = RealmStorage()

    @IBOutlet weak var findAllLabel: UILabel!
    @IBOutlet weak var saveLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentChange(sender: AnyObject) {
        guard let segment = sender as? UISegmentedControl else { return }
        
        switch segment.selectedSegmentIndex {
        case 0:
            storage = RealmStorage()
        case 1:
            storage = APIStorage()
        default:
            fatalError()
        }
    }

    @IBAction func pressFindAll(sender: AnyObject) {
        storage.findAll().success { [unowned self] (persons) -> Void in
            self.findAllLabel.text = persons.map({ $0.description }).joinWithSeparator(",")
        }
    }
    
    @IBAction func pressSave(sender: AnyObject) {
    }
}

