//
//  ContentView.swift
//  MVVMExample
//
//  Created by Goutham Devaraju on 29/08/24.
//

import SwiftUI

struct NewsView: View {
    @State private var model = ViewModel()

    var body: some View {
        List(model.stories) { story in
            Entry(story: story)
        }
        .listStyle(.plain)
        .navigationTitle("News")
        .task {
          try? await model.fetchTopStories()
        }
    }
}

extension Entry {
    init(story: Itemm) {
        title = story.title
        score = story.score
        commentCount = story.commentCount
        footnote = (story.url.host() ?? "")
        + " - \(story.date.formatted(.relative(presentation: .numeric)))"
        + " - by \(story.author)"
    }
}

#Preview {
    NavigationStack {
        NewsView()
    }
}
