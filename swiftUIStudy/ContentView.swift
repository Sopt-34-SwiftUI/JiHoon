//
//  ContentView.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}