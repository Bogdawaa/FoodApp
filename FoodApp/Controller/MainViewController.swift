//
//  ViewController.swift
//  FoodApp
//
//  Created by Bogdan on 07.10.2020.
//  Copyright © 2020 Bogdan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var cardView: UIView!
    @IBOutlet var cardViews: [UIView]!
    
    @IBAction func onMenuButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
        //self.present(vc, animated: false, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMenuButton()
        
        for cardView in cardViews {
            // corners
            cardView.layer.cornerRadius = 10

            // shadow
            cardView.layer.shadowColor = UIColor.black.cgColor
            cardView.layer.shadowOffset = CGSize(width: 3, height: 3)
            cardView.layer.shadowOpacity = 0.6
            cardView.layer.shadowRadius = 4.0
        }
    }
    
    
    func setUpMenuButton(){
        let menuBtn = UIButton(type: .custom)
        menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
        menuBtn.setImage(UIImage(named:"menu_icon2"), for: .normal)
        menuBtn.addTarget(self, action: #selector(MainViewController.onMenuButtonPressed(_:)), for: UIControl.Event.touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: menuBtn)
        let currWidth = menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 40)
        currWidth?.isActive = true
        let currHeight = menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 40)
        currHeight?.isActive = true
        self.navigationItem.leftBarButtonItem = menuBarItem
    }
}

