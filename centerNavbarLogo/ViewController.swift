//
//  ViewController.swift
//  navigation
//
//  Created by jwu on 7/26/19.
//  Copyright © 2019 jwu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        addNavBarImage()
        self.navigationItem.leftBarButtonItem = nil
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage (named: "youtube-logo"), for: .normal)
        button.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
        //button.addTarget(target, action: nil, for: .touchUpInside)
        let barButtonItem = UIBarButtonItem(customView: button)
        
        let button2 = UIButton(type: .custom)
        button2.setImage(UIImage (named: "youtube-logo"), for: .normal)
        button2.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
        //button.addTarget(target, action: nil, for: .touchUpInside)
        
        let barButtonItem2 = UIBarButtonItem(customView: button2)
        self.navigationItem.rightBarButtonItems = [barButtonItem, barButtonItem2]
        
        
    }
    
    func addNavBarImage() {
        
        let navController = navigationController!
        
        let image = UIImage(named: "youtube-logo.png")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.height
        
        let bannerX = bannerWidth/2 - (image?.size.width)!/2
        let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
        
        
    }
    


}

