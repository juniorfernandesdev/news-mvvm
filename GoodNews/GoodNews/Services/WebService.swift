//
//  WebService.swift
//  GoodNews
//
//  Created by Hoff Henry Pereira da Silva on 05/03/21.
//

import Foundation

class WebService {
    
    func getArticle(url: URL, completion: @escaping ([Article]?) -> ())  {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(NewsApiResult.self, from: data)
                    completion(result.articles)
                } catch let errors {
                    print(errors)
                    completion(nil)
                }
            }
        }.resume()
        
    }
    
}
