//
//  ContentView.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack{
                    Text("C").EtcButtonStyle()
                    Text("+").EtcButtonStyle()
                    Text("%").EtcButtonStyle()
                    Text("÷").OperationButtonStyle()
                }
                HStack{
                    Text("7").calculatorButtonStyle()
                    Text("8").calculatorButtonStyle()
                    Text("9").calculatorButtonStyle()
                    Text("x").OperationButtonStyle()
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
                    Text("0")
                        .frame(width: 160, height: 80)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .frame(maxWidth: .infinity)
                        .padding(.leading, 10)
                    Text(".").calculatorButtonStyle()
                    Text("=").OperationButtonStyle()
                }
            }
            .padding()
            .background(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
