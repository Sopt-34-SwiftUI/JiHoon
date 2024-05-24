////
////  CalculatorMF.swift
////  swiftUIStudy
////
////  Created by 이지훈 on 5/10/24.
////
//
//import Foundation
//import SwiftUI
//
//struct CalculatorButtonModifier: ViewModifier {
//    
//    func body(content: Content) -> some View {
//        content
//            .frame(width: 80, height: 80)
//            .background(Color.gray)
//            .cornerRadius(60)
//            .foregroundColor(.white)
//            .font(.system(size: 40))
//    }
//    
//}
//
<<<<<<< HEAD

import Foundation
import SwiftUI

struct CalculatorButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 80)
            .background(Color.gray.opacity(0.5))
            .cornerRadius(60)
            .foregroundColor(.white)
            .font(.system(size: 40))
    }
    
}

extension View {
    func calculatorButtonStyle() -> some View {
        self.modifier(CalculatorButtonModifier())
    }
}
=======
//extension View {
//    func calculatorButtonStyle() -> some View {
//        self.modifier(CalculatorButtonModifier())
//    }
//}
>>>>>>> parent of 465b058 (기본 계산기 버튼 UI 구현)
