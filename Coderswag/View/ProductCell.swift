//
//  ProductCell.swift
//  Coderswag
//
//  Created by Soubhik Sarkhel on 10/12/23.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateView(product: Product) {
        productTitle.text = product.title
        productPrice.text = product.price
        productImage.image = UIImage(named: product.imageName)
    }
}
