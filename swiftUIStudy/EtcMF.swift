//
//  EtcMF.swift
//  swiftUIStudy
//
//  Created by 이지훈 on 5/25/24.
//

import SwiftUI

struct EtcMF: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 80, height: 80)
            .background(Color.gray)
            .cornerRadius(60)
            .foregroundColor(.white)
            .font(.system(size: 40))
    }
    
}

extension View {
    func EtcButtonStyle() -> some View {
        self.modifier(EtcMF())
    }
}
