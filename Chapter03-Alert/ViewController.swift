//
//  ViewController.swift
//  Chapter02-Alert
//
//  Created by JSMAC on 2020/01/13.
//  Copyright © 2020 JSPRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultAlertBtn = UIButton(type: .system)
        defaultAlertBtn.frame = CGRect(x: 0, y: 100, width: 100, height: 30)
        defaultAlertBtn.center.x = self.view.frame.width / 2
        defaultAlertBtn.setTitle("기본 알림창", for: .normal)
        defaultAlertBtn.addTarget(self, action: #selector(defaultAlert(_:)), for: .touchUpInside)
        self.view.addSubview(defaultAlertBtn)
    }
    
    @objc func defaultAlert(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        let v = UIViewController()
        v.view.backgroundColor = UIColor.red
        alert.setValue(v, forKey: "contentViewController")
        
        self.present(alert, animated: false, completion: nil)
    }


}

