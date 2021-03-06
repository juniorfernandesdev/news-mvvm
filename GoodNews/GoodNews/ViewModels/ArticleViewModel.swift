//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Hoff Henry Pereira da Silva on 05/03/21.
//

import Foundation

struct ArticleViewModel {
    private let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
    
    var articleTitle: String {
        self.article.title
    }
    
    var articleDescription: String {
        self.article.description
    }
}
