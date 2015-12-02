//
//  ViewController.swift
//  ClosurePassValueBetweenVC
//
//  Created by langyue on 15/12/2.
//  Copyright © 2015年 langyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var myLabel:UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let item = UIBarButtonItem(title: "下一页", style: UIBarButtonItemStyle.Plain, target: self, action: "nextBtnClicked")
        self.navigationItem.rightBarButtonItem = item
        
        
        myLabel = UILabel(frame: CGRectMake(0,100,320,50))
        
        myLabel.text = "Closure"
        myLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(myLabel!)
        
        
        
        
        
    }
    
    
    
    func someFunctionThatTakesAClosure(string : String) -> Void{
        
        myLabel.text = string
        
        
    }
    
    
    
    func nextBtnClicked(){
        let second = NextViewController(nibName: nil, bundle: nil)
        second.initWithClosure(someFunctionThatTakesAClosure)
        self.navigationController?.pushViewController(second, animated: true)
        
    }
    
    
    
    
    override func viewWillDisappear(animated: Bool) {
        myLabel.hidden = true
    }
    
    
    override func viewWillAppear(animated: Bool) {
        myLabel.hidden = false
    }
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

