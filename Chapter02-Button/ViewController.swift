//
//  ViewController.swift
//  Chapter02-Button
//
//  Created by 최동호 on 2021/03/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // button attributes
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.setTitle("test button", for: .normal)
        
        // add button to root view
    }


}

