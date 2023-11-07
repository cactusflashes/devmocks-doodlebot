//
//  FlashcardTest.swift
//  devmocks
//
//  Created by Joseph Andrew Salmon on 11/6/23.
//

import SwiftUI

struct FlashcardTest: View {
    @State private var isFlipped = false

    var body: some View {
        VStack {
            CardView(text: isFlipped ? "Back" : "Front", color: isFlipped ? .blue : .red)
                .rotation3DEffect(
                    .degrees(isFlipped ? 180 : 0),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.5)) {
                isFlipped.toggle()
            }
        }
    }
}

struct CardView: View {
    let text: String
    let color: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(width: 200, height: 300)
            Text(text)
                .foregroundColor(.white)
                .font(.largeTitle)
        }
        
    }
}

#Preview {
    FlashcardTest()
}
