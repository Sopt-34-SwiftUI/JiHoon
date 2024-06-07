//
//  ContentView.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CalculatorViewModel()

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text(viewModel.displayText)
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .trailing)
                CalculatorButtonsView(viewModel: viewModel)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
