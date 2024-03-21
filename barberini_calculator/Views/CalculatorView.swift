//
//  CalculatorView.swift
//  barberini_calculator
//
//  Created by noah on 21.03.2024.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("0")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.system(size: 88, weight: .light))
                .lineLimit(1)
                .minimumScaleFactor(0.2)
        }
        .background(Color.black)
    }
}

#Preview {
    CalculatorView()
}
