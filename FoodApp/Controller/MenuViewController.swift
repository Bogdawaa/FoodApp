//
//  MenuViewController.swift
//  FoodApp
//
//  Created by Bogdan on 03.03.2021.
//  Copyright © 2021 Bogdan. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var barItem: UIBarItem!
    
    
    var menus = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        self.tableView.dataSource = self
        
        let latteItem = Item()
        latteItem.name = "Латте"
        latteItem.price = 120.0
        latteItem.description = "Непосредственно латте, да тоесть."
        menus.append(latteItem)
        
        let americanoItem = Item()
        americanoItem.name = "Американо"
        americanoItem.price = 110.0
        americanoItem.description = "Так называемый американо."
        menus.append(americanoItem)
        
        let cappuccinoItem = Item()
        cappuccinoItem.name = "Капучино"
        cappuccinoItem.price = 90.0
        cappuccinoItem.description = "Ну капучино. Ну да, капучино."
        menus.append(cappuccinoItem)
        
        let flatWhiteItem = Item()
        flatWhiteItem.name = "Флет уайт"
        flatWhiteItem.price = 105.0
        flatWhiteItem.description = "Белый как кока. Крепкий как чифир."
        menus.append(flatWhiteItem)
        
        let espressoItem = Item()
        espressoItem.name = "Эспрессо"
        espressoItem.price = 50.0
        espressoItem.description = "Не белый, но вштырит нормально."
        menus.append(espressoItem)
        
        let cacaoItem = Item()
        cacaoItem.name = "Какао"
        cacaoItem.price = 80.0
        cacaoItem.description = "Чикаладный напиток. Не черный, не белый."
        menus.append(cacaoItem)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menus.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tabbed on item")
    }
    
    
    func numberOfSections(in mytableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        
        let item = menus[indexPath.row]
        //cell.configure(with: "Latte     -     120p.", imageName: "gear")
        //cell.textLabel?.text = self.menus[indexPath.row].name
        cell.itemLabel.text = item.name
        cell.itemDescription.text = item.description
        //cell.itemPrice.titleLabel?.text = String(item.price)
        cell.itemPrice.setTitle(String(item.price), for: .normal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}


