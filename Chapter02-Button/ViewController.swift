//
//  ViewController.swift
//  Chapter02-Button
//
//  Created by 최동호 on 2021/03/09.
//

import UIKit

class ViewController: UIViewController {
    
    // 선언만 하고 초기화는 안함: 메모리 절약
    var subject: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // button attributes
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        btn.setTitle("test button", for: .normal)
        
        // add button to super view
        self.view.addSubview(btn)
        
        // 버튼과 이벤트를 연결
        btn.addTarget(self, action: #selector(btnOnClick(_:)), for: .touchUpInside)
        
        // 레이블 객체 특성
        self.subject = UILabel()
        self.subject.frame = CGRect(x: 50, y: 150, width: 100, height: 30)
        self.subject.text = "hi"
        
        // super view 에 추가
        self.view.addSubview(self.subject)
    }
    
    // 이벤트
    @objc func btnOnClick(_ sender: Any){
        // 호출한 객체가 버튼이라면
        if let btn = sender as? UIButton {
            btn.setTitle("클릭되었습니다.", for: .normal)
            
            self.subject.text = "Bye, IB"
        }
    }
}
