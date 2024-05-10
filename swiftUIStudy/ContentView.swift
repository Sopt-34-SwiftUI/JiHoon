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
            HStack{
                Text("7").calculatorButtonStyle()
                Text("8").calculatorButtonStyle()
                Text("9").calculatorButtonStyle()
                Text("X").OperationButtonStyle()
            }
            HStack{
                Text("4").calculatorButtonStyle()
                Text("5").calculatorButtonStyle()
                Text("6").calculatorButtonStyle()
                Text("-").OperationButtonStyle()
            }
            HStack{
                Text("1").calculatorButtonStyle()
                Text("2").calculatorButtonStyle()
                Text("3").calculatorButtonStyle()
                Text("+").OperationButtonStyle()
            }
            HStack{
                Text("0").calculatorButtonStyle()
                Text(".").calculatorButtonStyle()
                Spacer()
                Text("=").OperationButtonStyle()
            }
        }
        .padding()
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
