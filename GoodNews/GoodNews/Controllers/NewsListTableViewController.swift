//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Hoff Henry Pereira da Silva on 03/03/21.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        WebService().getArticle(
            url: URL(
                string: "https://newsapi.org/v2/top-headlines?country=br&apiKey=dd7ed3bceeb145c6b32a7e75eca3a9bd")!) { _ in
            print("Passou por aqui")
        }
    }
    
}
