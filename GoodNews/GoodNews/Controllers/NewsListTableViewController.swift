//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Hoff Henry Pereira da Silva on 03/03/21.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var viewModel: ArticleListViewModel? {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        WebService().getArticle(
            url: URL(
                string: "https://newsapi.org/v2/top-headlines?country=br&apiKey=dd7ed3bceeb145c6b32a7e75eca3a9bd")!) { [weak self] articles in
            guard let self = self,
                  let articles = articles else { return }
            self.viewModel = ArticleListViewModel(articles: articles)
        }
    }
}

extension NewsListTableViewController {
    // MARK: TableViewDelegate
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ArticleTableViewCell.self), for: indexPath) as? ArticleTableViewCell,
            let article = viewModel?.articles[indexPath.row] else {
            return UITableViewCell()
        }
        cell.setupArticle(ArticleViewModel(article))
        return cell
    }
    
}

extension NewsListTableViewController {
    // MARK: TableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        viewModel?.numberOfSection ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.numberOfRowsInSection(section) ?? 0
    }
    
}
