//
//  MyTableViewCell.swift
//  FoodApp
//
//  Created by Bogdan on 04.03.2021.
//  Copyright © 2021 Bogdan. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var itemImageView: UIImageView!
    @IBOutlet var itemLabel: UILabel!
    @IBOutlet var itemPrice: UIButton!
    @IBOutlet var itemDescription: UILabel!
    
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        itemLabel.text = title
        itemImageView.image = UIImage(systemName: imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //itemImageView.contentMode = .scaleAspectFit
        itemPrice.backgroundColor = .clear
        itemPrice.layer.cornerRadius = 5
        itemPrice.layer.borderWidth = 1
        itemPrice.layer.borderColor = UIColor.darkGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
