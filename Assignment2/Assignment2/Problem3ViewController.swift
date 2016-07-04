//
//  Problem3ViewController.swift
//  Assignment2
//
//  Created by Elio Pajares on 7/3/16.
//  Copyright © 2016 Elio Pajares. All rights reserved.
//

import UIKit

class Problem3ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 3"

        // Do any additional setup after loading the view.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var textViewProb3: UITextView!
    
    @IBAction func clickRunP3(sender: AnyObject) {
        //print("we were clicked again")
        textViewProb3.text = "You clicked run problem 3"

        
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
