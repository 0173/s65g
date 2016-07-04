//
//  Problem2ViewController,.swift
//  Assignment2
//
//  Created by Elio Pajares on 7/3/16.
//  Copyright © 2016 Elio Pajares. All rights reserved.
//

import UIKit

class Problem2ViewController: UIViewController {
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Problem 2"
        // Do any additional setup after loading the view.
        
        let TwoDArray = TwoDimArrBool(height: 5, width: 5)
        TwoDArray.printMyArrayBefore()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var textViewProb2: UITextView!
    @IBAction func clickRunP2(sender: UIButton) {
        textViewProb2.text = "You clicked run problem 2"
        //print("we were clicked again")
        
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
