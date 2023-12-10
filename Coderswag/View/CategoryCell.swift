//
//  CategoryCell.swift
//  Coderswag
//
//  Created by Soubhik Sarkhel on 30/11/23.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateView(category: Category) {
        categoryTitle.text = category.title
        categoryImage.image = UIImage(named: category.imageName)
    }
}
