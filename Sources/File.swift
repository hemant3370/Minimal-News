//
//  File.swift
//  Wage
//
//  Created by Hemant Singh on 14/10/17.
//

import Foundation
import FeedKit

class FeedRepository {
    
    class func getFeed(completion: @escaping(Result) -> Void) {
        let feedURL = URL(string: "http://feeds.reuters.com/reuters/INtopNews")!
        let parser = FeedParser(URL: feedURL)
        parser?.parseAsync(queue: DispatchQueue.global(qos: .userInitiated)) { (result) in
            // Do your thing, then back to the Main thread
            print(result.isSuccess)
            completion(result)
           
        }
    }
}

extension RSSFeedItem {
    func toDictionary() -> [AnyHashable: Any] {
        var dict: [AnyHashable: Any] = [:]
            dict["title"] = title ?? ""
            dict["description"] = description ?? ""
            dict["author"] = author ?? ""
            dict["link"] = link ?? ""
        return dict
    }
}
