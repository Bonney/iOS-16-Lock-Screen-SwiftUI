//
//  LockScreenUI.swift
//  MBiOS16LockScreen
//
//  Created by Matt Bonney on 9/21/22.
//

import SwiftUI

struct LockScreenUI: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.clear
            VStack(spacing: 0) {

                HStack {
                    // MARK: System Date Widget
                    Text("Wed 21")

                    // MARK: Inline Text Widget
                    Label("72°", systemImage: "sun.max.fill")
                }
                .font(.system(size: 20, weight: .bold, design: .default))
                .kerning(-0.24)
                .foregroundStyle(.regularMaterial)

                // MARK: System Clock
                Text("9:41")
                    .font(.system(size: 92, weight: .bold, design: .default))
                    .padding(.top, -6)
                    .foregroundStyle(.regularMaterial)

                HStack(alignment: .top) {
                    // MARK: Medium Widget
                    VStack(alignment: .leading) {
                        Text("WWDC")
                            .bold()
                            .foregroundStyle(.thickMaterial)

                        Text("San Jose, CA")
                            .foregroundStyle(.regularMaterial)

                        Text("Now to 1:00PM")
                            .foregroundStyle(.thinMaterial)
                            .italic()
                    }
                    .font(.system(size: 16))

                    Spacer()

                    // MARK: Small Widget 1
                    Gauge(value: 0.67, in: 0...1.0) {
                        Image(systemName: "applewatch")
                    }
                    .gaugeStyle(.accessoryCircularCapacity)
                    .foregroundStyle(.regularMaterial)
                    .opacity(0.8)

                    // MARK: Small Widget 2
                    Gauge(value: 0.3, label: {
                        Image(systemName: "cloud.fill")
                    }, currentValueLabel: {
                        Image(systemName: "bolt.fill")
                    })
                    .gaugeStyle(.accessoryCircularCapacity)
                    .foregroundStyle(.regularMaterial)
                    .opacity(0.8)
                }
                .padding(.top, 4)
            }
            .padding(.top, 35)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.horizontal, 28)
        }
    }
}

struct LockScreenUI_Previews: PreviewProvider {
    static var previews: some View {
        LockScreenUI()
            .background {
                Color.blue.ignoresSafeArea()
            }
    }
}
