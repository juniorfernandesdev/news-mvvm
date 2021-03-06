//
//  ArticleListViewModel.swift
//  GoodNews
//
//  Created by Hoff Henry Pereira da Silva on 05/03/21.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
    
    let numberOfSection = 1
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        articles.count
    }
    
    func getArticleAt(_ index: Int) -> ArticleViewModel {
        ArticleViewModel(articles[index])
    }
    
}
