import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = MySite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct MySite: Site {
    var name = "stocky list website"
    var titleSuffix = " – Sites for Universal Links"
    var url = URL(static: "https://daily-goods-list-site.pages.dev")
    var builtInIconsEnabled = true
    var language = Language.japanese

    var author = "sakoda hiromichi"

    var homePage = Home()
    var layout = MainLayout()
}
