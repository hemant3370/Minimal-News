import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectMustache

final class NewsController {

  let documentRoot = "./webroot"

  var routes: [Route] {
    return [
      Route(method: .get, uri: "/news", handler: indexView)
    ]
  }

  func indexView(request: HTTPRequest, response: HTTPResponse) {
      var values = MustacheEvaluationContext.MapType()
         FeedRepository.getFeed(completion: { (result) in
           values["news"] = result.rssFeed?.items?.map({ $0.toDictionary() })
            mustacheRequest(request: request, response: response, handler: MustacheHelper(values: values), templatePath: request.documentRoot + "/index.mustache")
        })
  }

}
