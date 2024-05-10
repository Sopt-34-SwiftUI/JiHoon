//
//  OperationMF.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 5/10/24.
//

import SwiftUI

struct OperationButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 80)
            .background(Color.orange)
            .cornerRadius(60)
            .foregroundColor(.white)
            .font(.system(size: 40))
    }
    
}

extension View {
    func OperationButtonStyle() -> some View {
        self.modifier(OperationButtonModifier())
    }
}
