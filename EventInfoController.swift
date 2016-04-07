//
//  EventInfoController.swift
//  GaelGuide
//
//  Created by Justine Seastres on 4/6/16.
//  Copyright © 2016 Justine Seastres. All rights reserved.
//

import UIKit

class EventInfoController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var eventName = ""
    
    
//    @IBOutlet weak var testLabel2: UILabel!
//    var eventName2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = eventName
//        testLabel2.text = eventName2
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
