//
//  DetailView.swift
//  hacker_news_swiftui
//
//  Created by Alexey on 2/27/22.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_iPreviews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


