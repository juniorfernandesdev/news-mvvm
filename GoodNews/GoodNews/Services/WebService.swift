//
//  WebService.swift
//  GoodNews
//
//  Created by Hoff Henry Pereira da Silva on 05/03/21.
//

import Foundation

class WebService {
    
    func getArticle(url: URL, completion: @escaping ([Any]?) -> ())  {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                completion([Any]())
                print(data)
            }
            
        }.resume()
        
    }
    
}
