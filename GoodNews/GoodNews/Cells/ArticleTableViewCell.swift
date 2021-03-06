//
//  ArticleTableViewCell.swift
//  GoodNews
//
//  Created by Hoff Henry Pereira da Silva on 05/03/21.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setupArticle(_ articleViewModel: ArticleViewModel) {
        titleLabel.text = articleViewModel.articleTitle
        descriptionLabel.text = articleViewModel.articleDescription
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        descriptionLabel.text = nil
    }
    
}
