import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("ストリスがデータの共有を求めています")
            .font(.title1)
        List {
            //⭐️ブラウザで https://apps.apple.com/jp/ を開き、検索ボックスにアプリ名を入力し、目的のアプリを探す。アプリ詳細ページへ移動し、アドレスバーから URL をコピー
//            Text(markdown: "[App Store](https://apps.apple.com/app/apple-store)")
            Text("app storeからアプリをダウンロードしてください。") // 後に削除
            Text("このページをSafariで開いてください")
            Text("右上の開くボタンをタップしてください")
        }
//        .listStyle(.ordered(.default))
        Alert {
            Text("うまく動かない場合は、このページのURLをストリスに入力してください")
        }
        .role(.warning)
    }
}
