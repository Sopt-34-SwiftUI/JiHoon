//
//  calculatorBtnView.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 6/7/24.
//

import SwiftUI

struct CalculatorButtonsView: View {
    @ObservedObject var viewModel: CalculatorViewModel

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
         
            VStack(spacing: 10) {
                             HStack(spacing: 10) {
                                 Button(action: { viewModel.buttonTapped("C") }) {
                                     Text("C").etcButtonStyle()
                                 }
                                 Button(action: { viewModel.buttonTapped("+") }) {
                                     Text("+").etcButtonStyle()
                                 }
                                 Button(action: { viewModel.buttonTapped("%") }) {
                                     Text("%").etcButtonStyle()
                                 }
                                 Button(action: { viewModel.buttonTapped("÷") }) {
                                     Text("÷").operationButtonStyle()
                                 }
                             }
                HStack(spacing: 10) {
                    Button(action: { viewModel.buttonTapped("7") }) {
                        Text("7").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("8") }) {
                        Text("8").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("9") }) {
                        Text("9").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("x") }) {
                        Text("x").operationButtonStyle()
                    }
                }
                HStack(spacing: 10) {
                    Button(action: { viewModel.buttonTapped("4") }) {
                        Text("4").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("5") }) {
                        Text("5").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("6") }) {
                        Text("6").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("-") }) {
                        Text("-").operationButtonStyle()
                    }
                }
                HStack(spacing: 10) {
                    Button(action: { viewModel.buttonTapped("1") }) {
                        Text("1").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("2") }) {
                        Text("2").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("3") }) {
                        Text("3").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("+") }) {
                        Text("+").operationButtonStyle()
                    }
                }
                HStack(spacing: 10) {
                    Button(action: { viewModel.buttonTapped("0") }) {
                        Text("0")
                            .frame(width: 160, height: 80)
                            .background(Color.gray.opacity(0.5))
                            .cornerRadius(60)
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .frame(maxWidth: .infinity)
                            .padding(.leading, 10)
                    }
                    Button(action: { viewModel.buttonTapped(".") }) {
                        Text(".").calculatorButtonStyle()
                    }
                    Button(action: { viewModel.buttonTapped("=") }) {
                        Text("=").operationButtonStyle()
                    }
                }
            }
            .padding()
        }
    }
}

    func buttonTapped(_ value: String) {
        viewModel.displayText = value
    }
}
