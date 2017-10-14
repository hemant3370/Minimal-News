// Generated automatically by Perfect Assistant Application
// Date: 2017-09-20 19:30:47 +0000
import PackageDescription
let package = Package(
	name: "Minimal News",
	targets: [],
	dependencies: [
		.Package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", majorVersion: 3),
        .Package(url:"https://github.com/nmdias/FeedKit.git", majorVersion: 6),
        .Package(url: "https://github.com/PerfectlySoft/Perfect-Mustache.git", majorVersion: 3),
	]
)
