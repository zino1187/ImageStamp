//
//  ViewController.swift
//  ImageStamp
//
//  Created by zino-mac on 2020/02/10.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let gesture = UITapGestureRecognizer(target: self, action: #selector(viewClick))
        
        self.view.addGestureRecognizer(gesture)
    }
    
    @objc func viewClick(touch:UITapGestureRecognizer){
        NSLog("뷰 클릭했니?", "")
        createStamp(touch: touch)
    }
    
    func createStamp(touch:UITapGestureRecognizer){
        var imgView = UIImageView(image: UIImage(named: "h5.png"))
        let point = touch.location(in: self.view)
        imgView.frame = CGRect(x: point.x, y: point.y, width: 40, height: 40)
        self.view.addSubview(imgView)
    }

}

