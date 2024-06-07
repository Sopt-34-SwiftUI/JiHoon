//
//  ContentView.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 5/5/24.
//


import SwiftUI

struct ContentView: View {
    @State private var displayText: String = "0"
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Text(displayText)
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .trailing)
             
                VStack(spacing: 10) {
                    HStack(spacing: 10) {
                        Button(action: { self.buttonTapped("C") }) {
                            Text("C").etcButtonStyle()
                        }
                        Button(action: { self.buttonTapped("+") }) {
                            Text("+").etcButtonStyle()
                        }
                        Button(action: { self.buttonTapped("%") }) {
                            Text("%").etcButtonStyle()
                        }
                        Button(action: { self.buttonTapped("÷") }) {
                            Text("÷").operationButtonStyle()
                        }
                    }
                    HStack(spacing: 10) {
                        Button(action: { self.buttonTapped("7") }) {
                            Text("7").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("8") }) {
                            Text("8").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("9") }) {
                            Text("9").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("x") }) {
                            Text("x").operationButtonStyle()
                        }
                    }
                    HStack(spacing: 10) {
                        Button(action: { self.buttonTapped("4") }) {
                            Text("4").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("5") }) {
                            Text("5").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("6") }) {
                            Text("6").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("-") }) {
                            Text("-").operationButtonStyle()
                        }
                    }
                    HStack(spacing: 10) {
                        Button(action: { self.buttonTapped("1") }) {
                            Text("1").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("2") }) {
                            Text("2").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("3") }) {
                            Text("3").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("+") }) {
                            Text("+").operationButtonStyle()
                        }
                    }
                    HStack(spacing: 10) {
                        Button(action: { self.buttonTapped("0") }) {
                            Text("0")
                                .frame(width: 160, height: 80)
                                .background(Color.gray.opacity(0.5))
                                .cornerRadius(60)
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .frame(maxWidth: .infinity)
                                .padding(.leading, 10)
                        }
                        Button(action: { self.buttonTapped(".") }) {
                            Text(".").calculatorButtonStyle()
                        }
                        Button(action: { self.buttonTapped("=") }) {
                            Text("=").operationButtonStyle()
                        }
                    }
                }
                .padding()
            }
        }
    }
    
    func buttonTapped(_ value: String) {
        displayText = value
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
