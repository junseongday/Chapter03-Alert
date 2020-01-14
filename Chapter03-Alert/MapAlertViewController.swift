//
//  MapAlertViewController.swift
//  Chapter03-Alert
//
//  Created by JSMAC on 2020/01/14.
//  Copyright © 2020 JSPRO. All rights reserved.
//

import UIKit
import MapKit
class MapAlertViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let alertBtn = UIButton(type: .system)
        alertBtn.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
        alertBtn.center.x = self.view.frame.width / 2
        alertBtn.setTitle("Map Alert", for: .normal)
        alertBtn.addTarget(self, action: #selector(mapAlert(_:)), for: .touchUpInside)
        self.view.addSubview(alertBtn)
    }
    
    @objc func mapAlert(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "여기가 맞나요?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        let contentVC = MapKitViewController()
        
        alert.setValue(contentVC, forKey: "contentViewController")
        
        self.present(alert, animated: false, completion: nil)
    }
    
    
}
