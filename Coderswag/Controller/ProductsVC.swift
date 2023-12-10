//
//  ProductsVC.swift
//  Coderswag
//
//  Created by Soubhik Sarkhel on 10/12/23.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category) {
        products = DataService.shared.getProducts(categoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        
        return ProductCell()
    }
}
