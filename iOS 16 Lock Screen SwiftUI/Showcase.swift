//
//  Showcase.swift
//  iOS 16 Lock Screen SwiftUI
//
//  Created by Matt Bonney on 9/21/22.
//

import SwiftUI

struct LockScreenShowcase: View {

    var gradients: [Gradient] = [
        Gradient(colors: [Color.blue, Color.green]),
        Gradient(colors: [Color.orange, Color.red]),
        Gradient(colors: [Color.blue, Color.purple]),
        Gradient(colors: [Color.purple, Color.red]),
        Gradient(colors: [Color.red, Color.blue]),
        Gradient(colors: [Color.green, Color.yellow])
    ]

    var body: some View {
        TabView {
            ForEach(gradients, id: \.self) { gradient in
                Rectangle()
                    .foregroundStyle(
                        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                    )
                    .ignoresSafeArea()
            }
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
        .overlay {
            LockScreenUI()
        }
    }
}
