//
//  NextViewController.swift
//  ClosurePassValueBetweenVC
//
//  Created by langyue on 15/12/2.
//  Copyright © 2015年 langyue. All rights reserved.
//

import UIKit


typealias secondValueClosure = (string : String) -> Void


class NextViewController: UIViewController {

    var i : Int?
    var myClosure : secondValueClosure?
    
    
    
    func initWithClosure(closure: secondValueClosure?){
        
        myClosure = closure
        
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.view.backgroundColor = UIColor.cyanColor()
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        i=0
        let btn = UIButton(type: .System)
        btn.frame = CGRectMake(0, 100, 320, 50)
        btn.setTitle("Click Me !", forState: .Normal)
        btn.addTarget(self, action: "action", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
        
    }

    
    func action(){
        
        i = i! + 1
        
        if (myClosure != nil){
            myClosure!(string: "Good Good Very Good\(i) ")
        }
        
        
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
