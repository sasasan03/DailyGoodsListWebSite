import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {
    var name = "stocky list website"
    var titleSuffix = " – Sites for Universal Links"
    var url = URL(static: "https://www.example.com")
    var builtInIconsEnabled = true

    var author = "sakoda hiromichi"

    var homePage = Home()
    var layout = MainLayout()
}
